FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel
WORKDIR /app
COPY . .
RUN pip install -e .
CMD ["bash", "run.sh"]
