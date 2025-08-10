# limpiar-y-push.ps1
$repo = "https://github.com/Rochanovski/FAMA.git"
$branch = "PrepasyUniversidades"
$archivoGrande = "assets/P.P.P. 24 - 25 Mentores, Sin Sub.mp4"
$carpetaLimpia = "$PWD\FAMA-limpio"

git clone $repo $carpetaLimpia
Set-Location $carpetaLimpia
git checkout $branch
git filter-repo --path "$archivoGrande" --invert-paths --force
git remote remove origin
git remote add origin $repo
git push origin $branch --force
Write-Host "✅ Listo. El archivo grande fue eliminado del historial y el push se hizo correctamente."