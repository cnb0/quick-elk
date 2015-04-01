
curl -XPUT 'localhost:9200/.kibana/index-pattern/nfl' -d '{"title":"nfl","timeFieldName":"@timestamp","customFormats":"{}","fields":"[{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"pass_depth\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"home\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"player\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":false,\"analyzed\":false,\"name\":\"_source\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"@version\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":false,\"name\":\"_type\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"last_nm\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":false,\"analyzed\":false,\"name\":\"_id\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"def\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"description\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"year\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"penalty\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"min\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"clock_time\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"playcall\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"game_date\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":false,\"analyzed\":false,\"name\":\"_index\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"ydline\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"pass_result\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"togo\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"fumble\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"first_init\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"away\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"teams\",\"count\":0,\"scripted\":false},{\"type\":\"date\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"@timestamp\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"qtr\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"season\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"special_info\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"sec\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"month\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"off\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"defscore\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"playtype\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"day\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"offscore\",\"count\":0,\"scripted\":false},{\"type\":\"number\",\"indexed\":true,\"analyzed\":false,\"doc_values\":false,\"name\":\"down\",\"count\":0,\"scripted\":false},{\"type\":\"string\",\"indexed\":true,\"analyzed\":true,\"doc_values\":false,\"name\":\"play_loc\",\"count\":0,\"scripted\":false}]"}'

curl -XPUT 'localhost:9200/.kibana/config/4.0.1' -d '{"buildNum":5930,"defaultIndex":"nfl"}'

curl -XPUT 'localhost:9200/.kibana/visualization/Playtype-by-down' -d '{"title":"Playtype by down","visState":"{\"type\":\"histogram\",\"params\":{\"shareYAxis\":true,\"addTooltip\":true,\"addLegend\":true,\"mode\":\"percentage\",\"defaultYExtents\":false},\"aggs\":[{\"id\":\"1\",\"type\":\"count\",\"schema\":\"metric\",\"params\":{}},{\"id\":\"2\",\"type\":\"terms\",\"schema\":\"segment\",\"params\":{\"field\":\"down\",\"size\":5,\"order\":\"desc\",\"orderBy\":\"1\"}},{\"id\":\"3\",\"type\":\"terms\",\"schema\":\"group\",\"params\":{\"field\":\"playtype\",\"size\":5,\"order\":\"desc\",\"orderBy\":\"1\"}}],\"listeners\":{}}","description":"","version":1,"kibanaSavedObjectMeta":{"searchSourceJSON":"{\"index\":\"nfl\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"}}'

curl -XPUT 'localhost:9200/.kibana/visualization/Top-players-per-week' -d '{"title":"Top players per week","visState":"{\"type\":\"histogram\",\"params\":{\"shareYAxis\":true,\"addTooltip\":true,\"addLegend\":true,\"mode\":\"stacked\",\"defaultYExtents\":false},\"aggs\":[{\"id\":\"1\",\"type\":\"count\",\"schema\":\"metric\",\"params\":{}},{\"id\":\"2\",\"type\":\"date_histogram\",\"schema\":\"segment\",\"params\":{\"field\":\"@timestamp\",\"interval\":\"week\",\"min_doc_count\":1,\"extended_bounds\":{}}},{\"id\":\"3\",\"type\":\"terms\",\"schema\":\"group\",\"params\":{\"field\":\"player\",\"size\":10,\"order\":\"desc\",\"orderBy\":\"1\"}}],\"listeners\":{}}","description":"","version":1,"kibanaSavedObjectMeta":{"searchSourceJSON":"{\"index\":\"nfl\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"}}'

curl -XPUT 'localhost:9200/.kibana/visualization/Penalties-by-week' -d '{"title":"Penalties by week","visState":"{\"type\":\"line\",\"params\":{\"shareYAxis\":true,\"addTooltip\":true,\"addLegend\":true,\"defaultYExtents\":false},\"aggs\":[{\"id\":\"1\",\"type\":\"count\",\"schema\":\"metric\",\"params\":{}},{\"id\":\"2\",\"type\":\"date_histogram\",\"schema\":\"segment\",\"params\":{\"field\":\"@timestamp\",\"interval\":\"week\",\"min_doc_count\":1,\"extended_bounds\":{}}},{\"id\":\"3\",\"type\":\"terms\",\"schema\":\"group\",\"params\":{\"field\":\"penalty\",\"size\":2,\"order\":\"desc\",\"orderBy\":\"1\"}}],\"listeners\":{}}","description":"","version":1,"kibanaSavedObjectMeta":{"searchSourceJSON":"{\"index\":\"nfl\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"}}'

curl -XPUT 'localhost:9200/.kibana/visualization/Play-location-per-team' -d '{"title":"Play location per team","visState":"{\"type\":\"histogram\",\"params\":{\"shareYAxis\":true,\"addTooltip\":true,\"addLegend\":true,\"mode\":\"percentage\",\"defaultYExtents\":false},\"aggs\":[{\"id\":\"1\",\"type\":\"count\",\"schema\":\"metric\",\"params\":{}},{\"id\":\"2\",\"type\":\"terms\",\"schema\":\"segment\",\"params\":{\"field\":\"off\",\"size\":32,\"order\":\"desc\",\"orderBy\":\"1\"}},{\"id\":\"3\",\"type\":\"terms\",\"schema\":\"group\",\"params\":{\"field\":\"play_loc\",\"size\":3,\"order\":\"desc\",\"orderBy\":\"1\"}}],\"listeners\":{}}","description":"","version":1,"kibanaSavedObjectMeta":{"searchSourceJSON":"{\"index\":\"nfl\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"}}'

curl -XPUT 'localhost:9200/.kibana/visualization/Playtype-by-week' -d '{"title":"Playtype by week","visState":"{\"type\":\"histogram\",\"params\":{\"shareYAxis\":true,\"addTooltip\":true,\"addLegend\":true,\"mode\":\"stacked\",\"defaultYExtents\":false},\"aggs\":[{\"id\":\"1\",\"type\":\"count\",\"schema\":\"metric\",\"params\":{}},{\"id\":\"2\",\"type\":\"date_histogram\",\"schema\":\"segment\",\"params\":{\"field\":\"@timestamp\",\"interval\":\"week\",\"min_doc_count\":1,\"extended_bounds\":{}}},{\"id\":\"3\",\"type\":\"terms\",\"schema\":\"group\",\"params\":{\"field\":\"playtype\",\"size\":11,\"order\":\"desc\",\"orderBy\":\"1\"}}],\"listeners\":{}}","description":"","version":1,"kibanaSavedObjectMeta":{"searchSourceJSON":"{\"index\":\"nfl\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"}}'

curl -XPUT 'localhost:9200/.kibana/dashboard/NFL-2012' -d '{"title":"NFL 2012","hits":0,"description":"","panelsJSON":"[{\"col\":1,\"id\":\"Playtype-by-week\",\"row\":1,\"size_x\":12,\"size_y\":4,\"type\":\"visualization\"},{\"col\":1,\"id\":\"Playtype-by-down\",\"row\":5,\"size_x\":6,\"size_y\":3,\"type\":\"visualization\"},{\"col\":7,\"id\":\"Top-players-per-week\",\"row\":5,\"size_x\":6,\"size_y\":3,\"type\":\"visualization\"}]","version":1,"kibanaSavedObjectMeta":{"searchSourceJSON":"{\"filter\":[{\"query\":{\"query_string\":{\"analyze_wildcard\":true,\"query\":\"*\"}}}]}"}}'

curl -XPUT 'localhost:9200/.kibana/visualization/Total-Plays' -d '{"title":"Total Plays","visState":"{\"type\":\"metric\",\"params\":{\"fontSize\":60},\"aggs\":[{\"id\":\"1\",\"type\":\"count\",\"schema\":\"metric\",\"params\":{}}],\"listeners\":{}}","description":"","version":1,"kibanaSavedObjectMeta":{"searchSourceJSON":"{\"index\":\"nfl\",\"query\":{\"query_string\":{\"query\":\"*\",\"analyze_wildcard\":true}},\"filter\":[]}"}}'
