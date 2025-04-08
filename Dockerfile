# 1. استخدم صورة Python
FROM python:3.9

# 2. تعيين مجلد العمل داخل الحاوية
WORKDIR /app

# 3. نسخ كل الملفات إلى الحاوية
COPY . .

# 4. تثبيت المتطلبات
RUN pip install -r requirements.txt

# 5. فتح المنفذ 5000 (افتراضي لـ Flask)
EXPOSE 5000

# 6. تشغيل التطبيق
CMD ["python", "main.py"]


# FROM python:3.9 
# # Or any preferred Python version.
# ADD main.py .
# RUN pip install requests beautifulsoup4 python-dotenv
# CMD [“python”, “./main.py”] 
# # Or enter the name of your unique directory and parameter set.