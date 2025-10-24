# CodeQL Setup for homebrew-tap

This repository is configured with CodeQL security scanning to automatically detect security vulnerabilities and coding errors.

## What is CodeQL?

CodeQL is GitHub's semantic code analysis engine that treats code as data to find potential vulnerabilities. It runs automatically on:
- Every pull request to the `main` branch
- Every push to the `main` branch
- Daily at 2:00 AM UTC (scheduled scan)

## Workflow Configuration

The CodeQL workflow is located at `.github/workflows/codeql.yml` and is configured to:
- Analyze Ruby code (used in Homebrew cask definitions)
- Run automatically on PR check-ins
- Provide security alerts in the GitHub Security tab

## Installing the CodeQL App (Optional)

The workflow file uses GitHub Actions and doesn't require a separate CodeQL app installation. However, if you want to enable additional CodeQL features:

### Method 1: Enable via GitHub Security Settings (Recommended)

1. Go to the repository on GitHub: `https://github.com/udlose/homebrew-tap`
2. Click on **Settings** tab
3. In the left sidebar, click on **Code security and analysis**
4. Find **Code scanning** section
5. Click **Set up** next to "CodeQL analysis"
6. GitHub will automatically use the workflow file we've created

### Method 2: Enable GitHub Advanced Security (for private repositories)

If this were a private repository, you would need:

1. Go to repository **Settings**
2. Navigate to **Code security and analysis**
3. Enable **GitHub Advanced Security**
4. Then enable **CodeQL code scanning**

### Method 3: Install GitHub App (Alternative)

If you need the standalone CodeQL app:

1. Visit: https://github.com/apps/codeql
2. Click **Install** or **Configure**
3. Select the organization/account (`udlose`)
4. Choose which repositories to install it on
5. Select `homebrew-tap` repository
6. Click **Install** or **Save**

## Viewing CodeQL Results

Once CodeQL runs, you can view the results:

1. Go to the **Security** tab in the repository
2. Click on **Code scanning** in the left sidebar
3. View any detected vulnerabilities or issues
4. Each issue will have details, severity, and remediation guidance

## What Gets Scanned

The current configuration scans:
- **Ruby files**: Including Homebrew cask definitions (`Casks/*.rb`)
- **YAML files**: GitHub Actions workflows (implicitly checked)

## Workflow Triggers

The CodeQL workflow runs when:
- A pull request is opened, synchronized, or reopened targeting the `main` branch
- Code is pushed directly to the `main` branch
- On a scheduled basis (daily at 2:00 AM UTC)

## Permissions

The workflow requires the following permissions (automatically granted by GitHub Actions):
- `actions: read` - To read workflow information
- `contents: read` - To read repository contents
- `security-events: write` - To upload security scan results

## Troubleshooting

If the workflow fails:
1. Check the Actions tab for error details
2. Ensure the repository has security features enabled
3. Verify that the workflow file syntax is correct
4. Check if there are any permission issues in repository settings

## Additional Resources

- [CodeQL documentation](https://codeql.github.com/docs/)
- [Code scanning documentation](https://docs.github.com/en/code-security/code-scanning)
- [GitHub Actions documentation](https://docs.github.com/en/actions)
