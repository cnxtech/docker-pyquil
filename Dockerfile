FROM python:2.7-alpine as pyquil-base
RUN apk add -U gcc g++ git libc-dev freetype-dev
RUN git clone https://github.com/rigetticomputing/pyquil.git /pyquil
RUN cd /pyquil && pip install -e .

FROM python:2.7-alpine
COPY --from=pyquil-base /root/.cache /root/.cache
COPY --from=pyquil-base /pyquil/requirements.txt .
RUN pip install -r requirements.txt && rm -rf /root/.cache
RUN pip install pyquil
