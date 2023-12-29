from sqlalchemy import create_engine, text
from dotenv import load_dotenv
import os

load_dotenv()
db_connection_srt = os.getenv('DB_CRED')

engine = create_engine(
    db_connection_srt,
    connect_args={
        "ssl":{
            "ssl_ca": "/etc/ssl/cert.pem"
        }
    }
)

def load_jobs_from_db():
    with engine.connect() as conn:
        result = conn.execution_options(stream_results=True).execute(text("select * from jobs"))
        jobs = []
        for row in result.all():
            jobs.append(row)
        return jobs
    
def load_job_from_db(id):
    with engine.connect() as conn:
        result = conn.execution_options(stream_results=True).execute(text(f"select * from jobs where id = {id}"))
        rows = result.all()
        if len(rows) == 0:
            return None
        else:
            column_names = result.keys()
            job_dict = dict(zip(column_names, rows[0]))
            return job_dict
        
def submit_application(job_id, data):
    with engine.connect() as conn:
        query = text("""
            INSERT INTO applications
            (job_id, full_name, email, linkedin_url, education, work_experience, resume_url)
            VALUES
            (:job_id, :full_name, :email, :linkedin, :education, :work_experience, :resume_url)
        """)
        conn.execute(query, {
            'job_id': job_id,
            'full_name': data['full_name'],
            'email': data['email'],
            'linkedin': data['linkedin'],
            'education': data['education'],
            'work_experience': data['work_experience'],
            'resume_url': data['resume_url']
        })
