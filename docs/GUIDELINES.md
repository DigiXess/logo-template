# GUIDELINES

This document outlines the guidelines and best practices to ensure consistency, maintainability, and quality across the logo project. Following these guidelines will help streamline collaboration and improve the overall development process.

**Table of Contents**

- [Repository Guidelines](#repository-guidelines)
- [Logo Guidelines to Follow](#logo-guidelines-to-follow)
  - [Updating logo guidelines](#updating-logo-guidelines)
- [Keep Files Updated](#keep-files-updated)
- [Updating CHANGELOG](#updating-changelog)

## Repository Guidelines

Follow the [Repository Guidelines](https://github.com/DigiXess/repo-guidelines/blob/4fb6dbd51f42b6930bebed033736b934633320fd/graphic-assets-repo-guidelines.md "Code Repository Guidelines") for detailed instructions on managing the repository.

## Logo Guidelines to Follow

- Follow the [directory structure](/docs/logo-directory-structure.md "Directory Structure") for managing logo files.
- Create a [colour palette](/docs/colour-pallete.md "Colour Palette Document") file using the [colour palette template](https://github.com/DigiXess/logo-template/blob/main/docs/templates/colour-pallete.md "Color Palette Document"). See the [example](https://github.com/DigiXess/logo-template/blob/main/docs/templates/colour-pallete-example.md "Color Palette Example") for reference.
- Create a [logo concept](/docs/logo-concept.md "Logo Concept Document") file using the [logo concept template](https://github.com/DigiXess/logo-template/blob/main/docs/templates/logo-concept.md "Logo Concept Document"). See the [example](https://github.com/DigiXess/logo-template/blob/main/docs/templates/logo-concept-example.md "Logo Concept Example") for reference.
- Create a [logo usage](/logo-usage.md "Logo Usage Document") file using the [logo usage template](https://github.com/DigiXess/logo-template/blob/main/docs/templates/logo-usage.md "Logo Usage Document").
- Remove the following folder/files:
  - [logo template](/docs/templates/ "Logo Template folder")
  - `.gitkeep` files by running the following command:
    ```bash
    find . -type f -name ".gitkeep" -exec git rm {} \;
    ```
    - Remove any other files that are not relevant to the project.

### Updating logo guidelines

- Always install [fonts](/fonts/) before updating the logo.

## Keep Files Updated

Always ensure the following files are up to date:
- [README.md](/README.md)
- [LICENSE](/LICENSE)

## Updating CHANGELOG

Follow the [Changelog Guidelines](https://github.com/DigiXess/repo-guidelines/blob/main/common/changelog-guidelines.md "Changelog Guidelines") for detailed instructions on maintaining the changelogs.


