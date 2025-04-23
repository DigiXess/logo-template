# GUIDELINES

This document outlines the guidelines and best practices to ensure consistency, maintainability, and quality across the logo project. Following these guidelines will help streamline collaboration and improve the overall development process.

**Table of Contents**

- [Repository Guidelines](#repository-guidelines)
- [Logo Guidelines to Follow](#logo-guidelines-to-follow)
- [Keep Files Updated](#keep-files-updated)
- [Updating CHANGELOG](#updating-changelog)

## Repository Guidelines

Follow the [Repository Guidelines](https://github.com/DigiXess/repo-guidelines/blob/4fb6dbd51f42b6930bebed033736b934633320fd/graphic-assets-repo-guidelines.md "Code Repository Guidelines") for detailed instructions on managing the repository.

## Logo Guidelines to Follow

- Follow the [directory structure](/docs/logo-directory-structure.md "Directory Structure") for managing logo files.
- Create a [colour palette](/colour-pallete.md "Colour Palette Document") file using the [colour palette template](https://github.com/DigiXess/logo-template/blob/dev/docs/colour-pallet-template.md "Color Palette Document"). This document should include:
  - Color codes (e.g., HEX, RGB, HSL values).
  - A brief description of each color used in the logo design.
  - See the [example](https://github.com/DigiXess/logo-template/blob/dev/docs/colour-pallet-example.md "Color Palette Example") for reference.
- Create a [logo concept](/logo-concept.md "Logo Concept Document") file using the [logo concept template](https://github.com/DigiXess/logo-template/blob/dev/docs/logo-concept-template.md "Logo Concept Document"). This document should include:
  - A brief description of the logo concept.
  - The brand name and tagline (if any).
  - The logo style (e.g., Wordmark, Lettermark, Iconic, Combination Mark, etc.).
  - The industry and target audience for the logo.
  - The brand values associated with the logo.
  - etc.
- Remove the following files after use:
  - [Color palette template](/docs/colour-pallet-template.md "Color Palette Template")
  - [Color palette example](/docs/colour-pallet-example.md "Color Palette Example")
  - [Logo concept template](/docs/logo-concept-template.md "Logo Concept Template")
- Remove `.gitkeep` files by running the following command:
  ```bash
  find . -type f -name ".gitkeep" -exec git rm {} \;
  ```
- Remove any other files that are not relevant to the project.

## Keep Files Updated

Always ensure the following files are up to date:
- [README.md](/README.md)
- [LICENSE](/LICENSE)

## Updating CHANGELOG

Follow the [Changelog Guidelines](https://github.com/DigiXess/repo-guidelines/blob/main/common/changelog-guidelines.md "Changelog Guidelines") for detailed instructions on maintaining the changelogs.
