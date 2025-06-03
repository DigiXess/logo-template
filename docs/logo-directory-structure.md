# Logo Directory Structure

This document outlines the directory structure for managing logo files in the project. Following this structure will help maintain organization and consistency across the project.

**Table of Contents**
- [Directory Structure](#directory-structure)
- [Size variants](#size-variants)
- [Folder Explanations](#folder-explanations)
- [Always Follow](#always-follow)

## Directory Structure

Follow the directory structure below for managing logo files:

```
📁 /                           # Root directory
├── 📁 source                 # All logo source files (e.g., design files like .ai, .psd)
├── 📁 fonts                  # Font files used in designs
├── 📁 default                # Default logo
│   ├── 📁 Hi Resolution      # High DPI image files
│   ├── 📁 PNG                # PNG format images
│   ├── 📁 JPEG               # JPEG format images
│   ├── 📁 SVG                # SVG (vector) format images
│   ├── 📁 WEBP               # WEBP format images
│   └── 📁 PDF                # PDF format files
├── 📁 logo Icon              # Logo icon assets in multiple formats
│   ├── 📁 Hi Resolution      # High DPI logo icon files
│   ├── 📁 PNG                # Logo icons in PNG format
│   ├── 📁 JPEG               # Logo icons in JPEG format
│   ├── 📁 SVG                # Logo icons in SVG format
│   ├── 📁 PDF                # Logo icons in PDF format
│   └── 📁 WEBP               # Logo icons in WEBP format
```

## Size variants

When you have different logo size variants, add a folder named after the variant (e.g., `horizontal`) and follow the same structure as above. Place the source files for the variant under the `source` folder.

```
📁 /                           # Root directory
├── 📁 horizontal              # Horizontal logo variant
│   ├── 📁 Hi Resolution      # High DPI image files
│   ├── 📁 PNG                # PNG format images
│   ├── 📁 JPEG               # JPEG format images
│   ├── 📁 SVG                # SVG (vector) format images
│   ├── 📁 WEBP               # WEBP format images
│   └── 📁 PDF                # PDF format files
```

## Folder Explanations

- **`source`**: Contains all original design files (e.g., Adobe Illustrator, Photoshop) for logos and variants.
- **`fonts`**: Stores font files used in logo designs.
- **`default`**: Houses the default logo in various formats and resolutions.
  - **`Hi Resolution`**: High DPI images for print or large displays.
  - **`PNG`, `JPEG`, `SVG`, `WEBP`, `PDF`**: Logos in respective file formats.
- **`logo Icon`**: Contains logo icons in multiple formats and resolutions for use in smaller dimensions or as app icons.

## Always Follow

- For color variants : Add suffix file with the color name (e.g., `logo-red.png`, `logo-blue.svg`, `logo-p100.svg`) instead of creating separate folders.
- For color background variants: Add suffix  with color name such as `logo-red-bg.png`, `logo-blue-bg.svg` instead of creating separate folders.
- For both Color and background variants use suffix background color and color name such as `logo-s600-bg-p200.svg`, `logo-black-bg-p200.svg` instead of creating separate folders, 
- For transparent background variants: Add `Transparent` folder in `PNG`, and `SVG` folders.
- Ensure high-resolution images are generated and stored in the `Hi Resolution` folders.
- Include all fonts used in designs in the `fonts` folder.
- Maintain consistency in naming conventions across all folders and files.
- Always maintain the directory structure as mentioned above.
