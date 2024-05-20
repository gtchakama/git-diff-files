# Git Diff File by File Script

This repository contains a Bash script that performs `git diff` requests file by file. The script compares two specified commits or branches and displays the diff for each file that has changed between them.

## Usage

1. Clone the repository and navigate to the directory where you want to use the script:
   ```bash
   git clone <repository-url>
   cd <repository-directory>
   ```

2. Place the script in the root directory of your Git repository or any directory within the repository where you prefer to run the script. For example:
   ```bash
   cp git_diff_files.sh /path/to/your/git/repository/
   ```

3. Navigate to your Git repository:
   ```bash
   cd /path/to/your/git/repository/
   ```

4. Make the script executable:
   ```bash
   chmod +x git_diff_files.sh
   ```

5. Run the script with two commit hashes or branch names as arguments:
   ```bash
   ./git_diff_files.sh <commit1> <commit2>
   ```

### Example

To compare changes between two branches, `main` and `feature-branch`:
```bash
./git_diff_files.sh main feature-branch
```

To compare changes between two specific commits:
```bash
./git_diff_files.sh commit1_hash commit2_hash
```

## Script Explanation

The `git_diff_files.sh` script does the following:

1. Checks if the correct number of arguments (two) are provided. If not, it prints a usage message and exits.
2. Retrieves the list of files that have changed between the two specified commits or branches using `git diff --name-only`.
3. Loops through each changed file and displays the diff for that file using `git diff`.

## Requirements

- Git must be installed and available in your system's PATH.
- The script should be run in a Git repository.

This script was created to simplify the process of reviewing changes file by file in a Git repository.

---
