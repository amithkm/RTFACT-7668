# these tgz are already stored in the git repo but can be redownloaded if needed
mkdir from-npm
cd from-npm
mkdir no-namespace
cd no-namespace
mkdir 1.0.0
cd 1.0.0
curl https://registry.npmjs.org/eslint-visitor-keys/-/eslint-visitor-keys-1.0.0.tgz -o eslint-visitor-keys-1.0.0.tgz
cd .. && mkdir 1.1.0
cd 1.1.0
curl https://registry.npmjs.org/eslint-visitor-keys/-/eslint-visitor-keys-1.1.0.tgz -o eslint-visitor-keys-1.1.0.tgz
cd ../..
mkdir types-namespace && cd types-namespace
mkdir @types
cd @types
curl https://registry.npmjs.org/@types/eslint-visitor-keys/-/eslint-visitor-keys-1.0.0.tgz -o eslint-visitor-keys-1.0.0.tgz

