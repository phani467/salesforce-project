# Salesforce Conflict Resolution Workflow

## Quick Reference Commands

### Check for Conflicts Before Retrieve/Deploy
```bash
npm run sf:retrieve:preview  # Preview what will be retrieved
npm run sf:deploy:preview    # Preview what will be deployed
npm run sf:diff              # See local changes
```

### Safe Retrieve/Deploy Workflow
```bash
# Step 1: Preview changes
npm run sf:retrieve:preview

# Step 2: Retrieve from org
npm run sf:retrieve

# Step 3: Review changes in VS Code
npm run sf:diff

# Step 4: If no conflicts, deploy
npm run sf:deploy

# Step 5: Check deployment status
npm run sf:status
```

## VS Code Conflict Resolution

### When Conflicts Occur
1. **Git Conflicts** show in Source Control panel with `!` icon
2. **File markers** indicate conflicts:
   ```
   <<<<<<< HEAD (Current Change)
   Your local changes
   =======
   Changes from org (Incoming Change)
   >>>>>>> remote
   ```

### Resolve Using VS Code
- **Accept Current Change** - Keep your local version
- **Accept Incoming Change** - Keep org version
- **Accept Both Changes** - Merge both
- **Compare Changes** - Right-click → "Compare with..."

### Command Palette Actions
Press `Ctrl+Shift+P` and search:
- `SFDX: Retrieve Source from Org`
- `SFDX: Deploy Source to Org`
- `Merge Conflict: Compare Current Conflict`
- `Merge Conflict: Next Conflict`

## Conflict Prevention

### Best Practices
1. **Always retrieve before deploying**
   ```bash
   npm run sf:retrieve
   npm run sf:deploy
   ```

2. **Use feature branches**
   ```bash
   git checkout -b feature/my-feature
   # Make changes
   git commit -m "Your changes"
   ```

3. **Coordinate on shared metadata**
   - Profiles, Permission Sets
   - Package.xml
   - System settings

4. **Lock metadata during development**
   - Communicate with team
   - Use Copado's work item locking

## Configuration Files

### Files Created
- `.vscode/settings.json` - VS Code conflict detection enabled
- `.copadoignore` - Metadata excluded from Copado automerge
- `.sfdxignore` - Metadata excluded from source tracking
- `package.json` - Added helper scripts for deployment

### Key Settings Enabled
- Conflict detection at sync
- Merge conflict decorators
- Side-by-side diff editor
- CLI success messages
- Smart Git integration

## Troubleshooting

### Force Operations (Use with Caution)
```bash
# Force retrieve (overwrite local)
sf project retrieve start --source-dir force-app --ignore-conflicts

# Force deploy (ignore warnings)
sf project deploy start --source-dir force-app --ignore-warnings

# Deploy specific metadata
sf project deploy start --metadata ApexClass:MyClass
```

### Check Deployment Status
```bash
npm run sf:status
# Or
sf project deploy report
```

### View Recent Deployments
```bash
sf project deploy report --job-id DEPLOYMENT_ID
```

## Common Scenarios

### Scenario 1: Someone changed the same file
1. Retrieve latest: `npm run sf:retrieve`
2. VS Code shows conflict markers
3. Review both changes
4. Accept appropriate change or merge manually
5. Test locally
6. Deploy: `npm run sf:deploy`

### Scenario 2: Org has newer version
1. Preview: `npm run sf:retrieve:preview`
2. See what will be overwritten
3. Backup local changes if needed
4. Retrieve: `npm run sf:retrieve`
5. Review and merge
6. Deploy updated version

### Scenario 3: Deploy failed due to test failures
1. Check errors in Output panel
2. Fix failing tests
3. Run tests locally
4. Retry deploy: `npm run sf:deploy`

## Additional Resources

- Salesforce DX Developer Guide: https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/
- Copado Documentation: https://docs.copado.com
- VS Code Salesforce Extensions: https://marketplace.visualstudio.com/items?itemName=salesforce.salesforcedx-vscode
