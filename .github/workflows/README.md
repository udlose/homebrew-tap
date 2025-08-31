# GitHub Workflow Documentation

This directory contains automated workflows that maintain the homebrew-tap repository.

## Update Cask Workflow

The `update-cask.yml` workflow automatically keeps the MermaidPad Homebrew cask synchronized with new releases from the main MermaidPad repository.

### Workflow Process

```mermaid
flowchart TD
    A[Scheduled Trigger<br/>Daily at 1am UTC] --> B[Checkout Tap Repository]
    A1[Manual Trigger<br/>workflow_dispatch] --> B
    
    B --> C[Get Latest MermaidPad Release<br/>via GitHub API]
    C --> D[Parse Release Info<br/>Extract version & URLs]
    D --> E[Extract Current Version<br/>from Cask file]
    E --> F{Version Comparison<br/>Update Needed?}
    
    F -->|No| G[Send Email Notification<br/>No Update Required]
    F -->|Yes| H[Download .app Bundles<br/>osx-x64 & osx-arm64]
    
    H --> I[Calculate SHA256 Hashes<br/>for both architectures]
    I --> J[Update Cask File<br/>Version + SHA256 values]
    J --> K[Create Pull Request<br/>with updated cask]
    K --> L[Send Email Notification<br/>PR Created for Review]
    
    G --> M[Workflow Complete]
    L --> M
    
    style A fill:#e1f5fe
    style A1 fill:#e1f5fe
    style F fill:#fff3e0
    style G fill:#e8f5e8
    style L fill:#f3e5f5
    style M fill:#e8f5e8
```

### Workflow Components

#### Triggers
- **Scheduled**: Runs daily at 1:00 AM UTC
- **Manual**: Can be triggered via GitHub Actions UI

#### Security
- Restricted to repository owner (`udlose`) only
- Uses GitHub API with standard permissions
- Email notifications via SMTP secrets

#### Update Logic
1. **Version Detection**: Compares semantic versions using regex validation
2. **Asset Download**: Fetches both x64 and ARM64 .app.zip files
3. **Hash Verification**: Calculates SHA256 checksums for security
4. **Atomic Updates**: Updates version, Intel hash, and ARM hash in single commit

#### File Operations
```ruby
# Cask file pattern (Casks/mermaidpad.rb)
cask "mermaidpad" do
  version "1.0.4"                    # <- Updated by workflow
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "e115fb8...",        # <- Updated by workflow
         intel: "e1472dd..."         # <- Updated by workflow

  url "https://github.com/udlose/MermaidPad/releases/download/v#{version}/MermaidPad-#{version}-osx-#{arch}.app.zip"
  # ... rest of cask definition
end
```

#### Error Handling
- **Version Validation**: Strict semver regex prevents malformed versions
- **Asset Verification**: Confirms download URLs exist before processing
- **Fallback Notifications**: Email alerts for both success and failure cases

#### Integration Points
- **GitHub API**: Fetches release information from `udlose/MermaidPad`
- **SMTP**: Sends status notifications via configured email service
- **Git**: Creates feature branches and pull requests for review

### Maintenance

The workflow is designed to be fully autonomous, requiring intervention only when:
- MermaidPad changes its release asset naming convention
- GitHub API rate limits are exceeded
- SMTP configuration needs updates

All updates go through pull request review before being merged to the main branch, ensuring quality control while maintaining automation.