"""Run FastAPI app."""
from fastapi import FastAPI
#from app.src.routers.api import router as api_router

app = FastAPI()

def main():
    app.include_router(api_router)
    return app


if __name__ == "__main__":
    main()
