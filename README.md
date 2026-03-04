# Static site for GitHub Pages

This folder contains a static website ready to deploy.

## Quick deploy (GitHub Pages)
1. Create a new GitHub repository, for example `shelby-homepage`.
2. Upload all files from this folder to the repository root.
3. In GitHub: `Settings` -> `Pages`.
4. Source: `Deploy from a branch`.
5. Branch: `main`, folder: `/ (root)`.
6. Wait 1-3 minutes and open the generated URL.

## Local preview
Open `index.html` directly, or run:

```powershell
cd D:\Code\code\JavaScript\wangzhan
python -m http.server 8080
```
Then open `http://localhost:8080`.
