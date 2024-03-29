# python3 manage.py runserver 0.0.0.0:8001
gunicorn --bind :8001 portfolio.wsgi:application --reload
