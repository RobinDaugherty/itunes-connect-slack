FROM starefossen/ruby-node:2-8

WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY package.json .
RUN yarn install

COPY . .

CMD node poll-itc.js
