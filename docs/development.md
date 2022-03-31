## Development

### Workflow

```bash
# clone repo
git clone git@github.com:adfinis-sygroup/helm-charts.git
cd helm-charts

# add personal fork to working copy
git remote add $FORK_NAME $FORK_GIT_REPO

# fetch origin before branching
git fetch origin

# switch to feature branch
git switch -c feat/my-feature origin/master

# do changes
vim charts/

# stage changes for commit
git add -p

# run pre-commit
pre-commit run -a

# restage changes
git add -p

# check changes
git diff --cached

# commit using commitizen
git cz

# or with plain git commit
git commit

# push to fork
git push $FORK_NAME

# add changes to last commit and force push
pre-commit run -a
git add -p
git commit --amend
git push $FORK_NAME --force-with-lease
```

### Testing

A considerable amount of tests run on GitHub Actions on each push to the helm-charts repo. These should
check for basic deployability and functionality of the charts. You should look at the test results while
you are working on a pull request as they often contain log output that can help surface errors.

You can run most of the tests locally if you would like to, please refer to the [hack/ci](../hack/ci)
directory for examples on how to do so.

Before commiting you should test your changes using `helm template`. The charts usually have a few YAML
files that can help you do so.
* `ci/*-values.yaml` contains the values used in ci
* `examples/*.yaml` contains examples used by the docs

You can look at manifests using these:
```bash
helm template \
  -f charts/infra-apps/ci/default-values.yaml \
  -f charts/infra-apps/examples/argocd.yaml \
  charts/infra-apps
```

In most cases you will want to test a variety of cases. If your case isn't covered yet, consider adding
a new case to the charts `ci/` folder (based on `defaults-values.yaml`). You can also add your use-cases
to the `examples/` folder.

#### Automated testing

The CI setup in the repository supports running tests through the Helm [unittest](https://github.com/quintush/helm-unittest/)
plugin.

With the plugin each chart can (optionally) define some tests in `tests/*_test.yaml` files. In these
files you can test individual resources as rendered by a chart.

To use the tool locally you need to install it first.

```bash
helm plugin install https://github.com/quintush/helm-unittest
```

An example that does snapshot testing on the argocd bits of infra-apps described above might look as
follows.

```yaml
# charts/infra-apps/tests/argocd_test.yaml
suite: argocd tests
templates:
  - argocd.yaml
tests:
  - it: should match snapshot
    values:
      - ../ci/default-values.yaml
    asserts:
      - matchSnapshot: {}
  - it: should create an argocd app
    values:
      - ../examples/argocd.yaml
    asserts:
      - hasDocuments:
          count: 1
      # add more assertions here!
      - matchSnapshots: {}
```
Details on the available assertions may be found in the [docs](https://github.com/quintush/helm-unittest/blob/master/DOCUMENT.md).

After creating a test you should run it to ensure that it is green.

```bash
helm unittest --helm3 charts/infra-apps
```

When you create tests that contain `matchSnapshots` the tool will create and populate a
`tests/__snapshots__` directory. If you update resources you need to tell the tool to update the
snapshots.

```bash
helm unittest --helm3 --update-snapshot charts/infra-apps
```

Keep in mind that, if you choose to add snapshots that contain versions, you
will have to update the unittest snapshots with each version bump. Thus it
is usually preferable to write real "non-snapshot" tests or to rely soley on
the tests that the chart testing tool `ct` does.

Additionally to `helm unittest` we also automatically check if there are any depracated or removed `apiVersions` used in the charts with [pluto](https://pluto.docs.fairwinds.com/).

### Documentation

Most README files are autogenerated. Use `pre-commit` or the tools
in [hack/](../hack) to regenerate them.

More information is in the [documentation](./documentation.md) docs.

### pre-commit hook

This project uses [pre-commit](https://pre-commit.com/) to automate some tasks like
generating README files.

#### pre-commit requirements

* [helm-docs](https://github.com/norwoodj/helm-docs)
* [gomplate](https://github.com/hairyhenderson/gomplate)
* [helm-unittest](https://github.com/quintush/helm-unittest/)

#### pre-commit configuration

After installing the pre-commit requirements you can initialize pre-commit.

```bash
pre-commit install
pre-commit install-hooks
```