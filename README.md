# ts-files <3 Local TypeScript Shenanigans

This project provides a simple setup for creating new TypeScript files with unique filenames based on the current date. It uses a `Makefile` to handle the creation process and is ideal for quickly bootstrapping local TypeScript experiments and projects.

## Features

- Automatically generates a TypeScript file with a unique name based on the current date.
- Supports incremental naming if a file with the same name already exists.
- Integrates with [Neovim](https://neovim.io) to open the created file immediately for editing.
- Provides a basic setup for using TypeScript with `tsx` (TypeScript execution environment).

## Prerequisites

Before using this project, ensure you have the following installed:

- [Neovim](https://neovim.io) or any editor of your choice (adjust the `Makefile` if needed).
- Node.js (for `tsx`).
- [Make](https://www.gnu.org/software/make/).

## Setup

Run the following command to install `tsx` globally:

```bash
make setup
```

This command will execute:

```bash
npm install -g tsx
```

## Usage

To create a new TypeScript file, simply run:

```bash
make ts
```

This will:

1. Generate a filename in the format `test-MM-DD-YY.ts` where `MM-DD-YY` is the current date.
2. If a file with the same name already exists, it will append an incrementing number to the filename, like `test-MM-DD-YY(1).ts`.
3. Open the file in Neovim for editing.

### Example

If today's date is 10-23-24 and no file exists, running `make ts` will create `test-10-23-24.ts`. If that file already exists, it will create `test-10-23-24(1).ts`, and so on.

## Customization

- To use a different editor, modify the `nvim` command in the `Makefile`. For example, to use VSCode, change:

  ```makefile
  nvim "$$FILENAME"
  ```

  to

  ```makefile
  code "$$FILENAME"
  ```

## License

This project is free and open-source under the MIT License.
