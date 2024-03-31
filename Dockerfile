# FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel
FROM pytorch/pytorch:2.1.0-cuda11.8-cudnn8-runtime
WORKDIR /app
COPY . .
RUN pip install -e .
CMD ["bash", "run.sh"]
