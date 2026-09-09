@echo off
chcp 65001 >nul
echo ========================================================
echo   ☯️ CÀN KHÔN LINH THẠCH CÁC — KHỞI ĐỘNG HỆ THỐNG
echo ========================================================
echo.
echo Đang khởi chạy Backend FastAPI (Cổng 8000)...
start "Backend - FastAPI" cmd /k "python main.py"

timeout /t 2 /nobreak >nul

echo Đang khởi chạy Frontend Vite (Cổng 5173)...
cd frontend
start "Frontend - Vite" cmd /k "npm run dev"

echo.
echo ========================================================
echo   ✅ Hệ thống đã được khởi chạy thành công:
echo   - Giao diện (Frontend): http://localhost:5173
echo   - Máy chủ API (Backend): http://localhost:8000
echo   - Tài liệu API:        http://localhost:8000/docs
echo   - Tài khoản mẫu:       admin@gmail.com
echo   - Mật khẩu mẫu:        admin123
echo ========================================================
pause
