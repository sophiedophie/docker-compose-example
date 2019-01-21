FROM docker.elastic.co/elasticsearch/elasticsearch:6.5.4

# Install embulk (may don't need this)
# RUN wget http://dl.embulk.org/embulk-latest.jar -O /usr/local/bin/embulk
# RUN chmod +x /usr/local/bin/embulk
# RUN embulk gem install embulk-input-mysql embulk-output-elasticsearch

# plugin installation
RUN bin/elasticsearch-plugin install analysis-kuromoji