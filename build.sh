#!/usr/bin/env bash
set -e  # exit immediately on any error

echo "========================================"
echo " Step 1: Build React Frontend"
echo "========================================"
cd frontend
npm install --legacy-peer-deps
npm run build
cd ..

echo "========================================"
echo " Step 2: Copy Frontend Build → Backend"
echo "========================================"
mkdir -p backend/static
cp -r frontend/build/. backend/static/
echo "Frontend copied to backend/static/"

echo "========================================"
echo " Step 3: Install Python Dependencies"
echo "========================================"
cd backend
pip install -r requirements.txt

echo "========================================"
echo " Build Complete!"
echo "========================================"
