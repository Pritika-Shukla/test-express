FROM public.ecr.aws/lambda/nodejs:18

# Copy app files
COPY . ${LAMBDA_TASK_ROOT}
WORKDIR ${LAMBDA_TASK_ROOT}

# Install dependencies
RUN npm install

# Command to run the application
CMD ["index.handler"]
