# Contributing

How we work on this repository. The structure of the content itself is described in [CONTENT-MODEL.md](CONTENT-MODEL.md), decisions about it are logged in [docs/decisions.md](docs/decisions.md).

## Validation

Run the validator after every change and fix what it reports; CI runs it on every push and pull request:

```sh
ruby tools/validate.rb
```

When you change the validator itself, also run its test, which checks on a small sample tree that every rule still fires and valid content passes. A new rule needs a defect and an expectation in it.

```sh
ruby tools/validate_test.rb
```

## Branches

- Until mid-January 2027, `main` is frozen: don't commit, push, or open pull requests against it. All work goes to `interim-main`, directly or through a branch off it and a pull request into it.
- A change to `main` during the freeze needs Josua's explicit go-ahead for that specific change.
- Keep branch names, commit messages, and pull request titles short and factual.

## Language

- **Content:** German is the primary language. Every file exists in `de/` and `en/`; English content may still be untranslated (see CONTENT-MODEL.md).
- **Pull requests, issues, and review comments:** German.
- **Commit messages:** English, a short imperative subject in lowercase without a conventional-commit prefix (e.g. `fix the last broken links and image references`). Reference a logged decision as `(decision #N)`.

## Recording agreements

Write agreements down in the repository so every contributor sees them: workflow in this file, content structure in CONTENT-MODEL.md (including planned changes under "Open items"), and decisions in docs/decisions.md.
