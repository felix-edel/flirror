PRAGMA foreign_keys = OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "FlirrorObject" (
  "key" TEXT NOT NULL PRIMARY KEY,
  "value" JSON NOT NULL
);
INSERT INTO FlirrorObject
VALUES(
    'module_weather-weather-frankfurt',
    '{"_timestamp":1574874141.210646,"city":"Frankfurt, DE","date":1574873921,"detailed_status":"broken clouds","forecasts":[{"date":1574938800,"detailed_status":"light rain","icon":"10d","status":"Rain","temp_day":9.86,"temp_night":7.62},{"date":1575025200,"detailed_status":"moderate rain","icon":"10d","status":"Rain","temp_day":5.11,"temp_night":0.66},{"date":1575111600,"detailed_status":"light snow","icon":"13d","status":"Snow","temp_day":2.27,"temp_night":-2.7},{"date":1575198000,"detailed_status":"overcast clouds","icon":"04d","status":"Clouds","temp_day":0.12,"temp_night":-3.32},{"date":1575284400,"detailed_status":"few clouds","icon":"02d","status":"Clouds","temp_day":1.4,"temp_night":-4.05},{"date":1575370800,"detailed_status":"sky is clear","icon":"01d","status":"Clear","temp_day":0.79,"temp_night":-3.12}],"icon":"04n","status":"Clouds","sunrise_time":1574837244,"sunset_time":1574868224,"temp_cur":8.22,"temp_max":10.0,"temp_min":6.11}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_weather-weather-hamburg',
    '{"_timestamp":1574874141.456278,"city":"Hamburg, DE","date":1574874101,"detailed_status":"scattered clouds","forecasts":[{"date":1574938800,"detailed_status":"moderate rain","icon":"10d","status":"Rain","temp_day":8.79,"temp_night":8.4},{"date":1575025200,"detailed_status":"light rain","icon":"10d","status":"Rain","temp_day":5.79,"temp_night":-0.42},{"date":1575111600,"detailed_status":"sky is clear","icon":"01d","status":"Clear","temp_day":3.19,"temp_night":-0.57},{"date":1575198000,"detailed_status":"scattered clouds","icon":"03d","status":"Clouds","temp_day":3.98,"temp_night":-0.43},{"date":1575284400,"detailed_status":"sky is clear","icon":"01d","status":"Clear","temp_day":3.08,"temp_night":0.83},{"date":1575370800,"detailed_status":"overcast clouds","icon":"04d","status":"Clouds","temp_day":3.9,"temp_night":2.81}],"icon":"03n","status":"Clouds","sunrise_time":1574838387,"sunset_time":1574867335,"temp_cur":8.05,"temp_max":8.33,"temp_min":7.78}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_calendar-calendar-my',
    '{"_timestamp":1574874185.653769,"events":[{"end":1574931600,"location":null,"start":1574928000,"summary":"Important application","type":"time"},{"end":1575158400,"location":null,"start":1575072000,"summary":"Meet a friend","type":"day"},{"end":1575368100,"location":null,"start":1575364500,"summary":"Medical appointment","type":"time"},{"end":1575849600,"location":null,"start":1575676800,"summary":"Christmas Market","type":"day"},{"end":1575849600,"location":null,"start":1575676800,"summary":"Competition","type":"day"}]}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_calendar-calendar-authentication',
    '{"_timestamp":1574873152.758493,"hint":{"verification_url":"https://www.google.com/device","user_code":"SGBQ-BPNQ","qr_code":"iVBORw0KGgoAAAANSUhEUgAAAXIAAAFyAQAAAADAX2ykAAACd0lEQVR4nO2bTYrjMBBGX40MWSqQA+Qo8g3mTHOkuYF8lLmBtQzI1CwkxU6a7qbBbaKmtEkivUXBR/2oShHlK2v69SUcjDfeeOONN97493ipawDSgIxpgElEZEztbDzQHuP34ofyESJAugD+JgoZCfMlC7gMgBxjj/Hfw6fmoZOcFJKI/rkWZamOfag9xu/DD88bYT6LTr8VCf+GrKRj7TF+X/6NvuAyYYY30h5ij/Hfw3tVjYCMPgMsIiNLSbqqmo+2x/hd+UlERM7Q6ueTAk5lZCnl87H2GL8TX+Lz2qTU6ZrR6XoTputNwD82MF/NfuM/WaqqStCMRpyCVyXMru35XJCy4qvZb/wnqwo3O9XoMzUTt2+AU41elWD6dsjfnbNVUGF22g4yGlvhZf7bJV/jM76KXAVdg/QM5bpk+vbI3+MzxXU1QhU0buJzxuJzl/wm/xK0Cro9t/rqB/Ai15tAGlCdF9GIa4LitE6SDrTH+L34llf96qN5U1rVmH13YvPfzvhN8N3srUVWjc+mb9/8JCKtks5sxoWkAaaz0/rzRe03/r1V+1czrF2r9WcLzVY/d8o/xGef2165KdWa2vTtl7/771MvI7fGB1RPtvzbI7+93N47Wa2/Ub22Cm/6dsiX+WCb7rqspCGDVwROKqRLBp8HPcYe47+FD61JKaO/SXlfpzOUnFze3B1pj/E78c/1cymt1kgNUCbBln9/Ai/lQc55kToVnJ0yycnuv33yz+8ndTq7LOHvgOCXgRDzw/mr2W/8x6vp6xVIQNBFan2V2mGIi1h91SW/vebeR4O1a9Veclj+7ZcX+3+38cYbb7zxxh/O/wfQKR4oC56XOgAAAABJRU5ErkJggg=="}}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_stocks-stocks-series',
    '{"_timestamp":1574874186.4492302,"stocks":[{"alias":"APPLE","data":{"times":["2019-11-21 13:15:00","2019-11-21 13:30:00","2019-11-21 13:45:00","2019-11-21 14:00:00","2019-11-21 14:15:00","2019-11-21 14:30:00","2019-11-21 14:45:00","2019-11-21 15:00:00","2019-11-21 15:15:00","2019-11-21 15:30:00","2019-11-21 15:45:00","2019-11-21 16:00:00","2019-11-22 09:45:00","2019-11-22 10:00:00","2019-11-22 10:15:00","2019-11-22 10:30:00","2019-11-22 10:45:00","2019-11-22 11:00:00","2019-11-22 11:15:00","2019-11-22 11:30:00","2019-11-22 11:45:00","2019-11-22 12:00:00","2019-11-22 12:15:00","2019-11-22 12:30:00","2019-11-22 12:45:00","2019-11-22 13:00:00","2019-11-22 13:15:00","2019-11-22 13:30:00","2019-11-22 13:45:00","2019-11-22 14:00:00","2019-11-22 14:15:00","2019-11-22 14:30:00","2019-11-22 14:45:00","2019-11-22 15:00:00","2019-11-22 15:15:00","2019-11-22 15:30:00","2019-11-22 15:45:00","2019-11-22 16:00:00","2019-11-25 09:45:00","2019-11-25 10:00:00","2019-11-25 10:15:00","2019-11-25 10:30:00","2019-11-25 10:45:00","2019-11-25 11:00:00","2019-11-25 11:15:00","2019-11-25 11:30:00","2019-11-25 11:45:00","2019-11-25 12:00:00","2019-11-25 12:15:00","2019-11-25 12:30:00","2019-11-25 12:45:00","2019-11-25 13:00:00","2019-11-25 13:15:00","2019-11-25 13:30:00","2019-11-25 13:45:00","2019-11-25 14:00:00","2019-11-25 14:15:00","2019-11-25 14:30:00","2019-11-25 14:45:00","2019-11-25 15:00:00","2019-11-25 15:15:00","2019-11-25 15:30:00","2019-11-25 15:45:00","2019-11-25 16:00:00","2019-11-26 09:45:00","2019-11-26 10:00:00","2019-11-26 10:15:00","2019-11-26 10:30:00","2019-11-26 10:45:00","2019-11-26 11:00:00","2019-11-26 11:15:00","2019-11-26 11:30:00","2019-11-26 11:45:00","2019-11-26 12:00:00","2019-11-26 12:15:00","2019-11-26 12:30:00","2019-11-26 12:45:00","2019-11-26 13:00:00","2019-11-26 13:15:00","2019-11-26 13:30:00","2019-11-26 13:45:00","2019-11-26 14:00:00","2019-11-26 14:15:00","2019-11-26 14:30:00","2019-11-26 14:45:00","2019-11-26 15:00:00","2019-11-26 15:15:00","2019-11-26 15:30:00","2019-11-26 15:45:00","2019-11-26 16:00:00","2019-11-27 09:45:00","2019-11-27 10:00:00","2019-11-27 10:15:00","2019-11-27 10:30:00","2019-11-27 10:45:00","2019-11-27 11:00:00","2019-11-27 11:15:00","2019-11-27 11:30:00","2019-11-27 11:45:00","2019-11-27 12:00:00"],"values":[{"close":"262.1350","high":"262.4800","low":"262.1350","open":"262.1900","volume":"330109"},{"close":"262.2900","high":"262.3320","low":"262.1100","open":"262.1400","volume":"239432"},{"close":"262.0600","high":"262.3300","low":"261.9500","open":"262.3000","volume":"375336"},{"close":"261.9200","high":"262.1500","low":"261.8800","open":"262.0700","volume":"334920"},{"close":"262.0105","high":"262.3411","low":"261.7505","open":"261.9455","volume":"3446294"},{"close":"262.3780","high":"262.4900","low":"261.9850","open":"262.0150","volume":"468978"},{"close":"262.3200","high":"262.4390","low":"262.3100","open":"262.3700","volume":"351190"},{"close":"262.3600","high":"262.3600","low":"262.1600","open":"262.3200","volume":"284010"},{"close":"262.4700","high":"262.4700","low":"262.1700","open":"262.3500","volume":"364895"},{"close":"262.3650","high":"262.4800","low":"262.3340","open":"262.4600","volume":"361619"},{"close":"261.8697","high":"262.3650","low":"261.8000","open":"262.3600","volume":"601482"},{"close":"262.0100","high":"262.0100","low":"261.5000","open":"261.8700","volume":"2107249"},{"close":"261.8000","high":"263.0503","low":"261.7705","open":"262.5900","volume":"2061939"},{"close":"262.5400","high":"262.5920","low":"261.7700","open":"261.8400","volume":"804501"},{"close":"262.7143","high":"262.8450","low":"262.4260","open":"262.5443","volume":"671712"},{"close":"262.4328","high":"262.8700","low":"262.4100","open":"262.7135","volume":"509063"},{"close":"262.2105","high":"262.7315","low":"262.1709","open":"262.4642","volume":"650514"},{"close":"261.9000","high":"262.2400","low":"261.8900","open":"262.2000","volume":"474025"},{"close":"261.4598","high":"261.9300","low":"261.0200","open":"261.9085","volume":"1008500"},{"close":"261.8598","high":"262.1354","low":"261.2846","open":"261.4548","volume":"528047"},{"close":"262.2600","high":"262.3200","low":"261.8000","open":"261.8700","volume":"480154"},{"close":"262.3300","high":"262.4400","low":"262.1200","open":"262.2600","volume":"331005"},{"close":"261.9900","high":"262.3900","low":"261.9800","open":"262.3100","volume":"418383"},{"close":"262.1494","high":"262.1600","low":"261.8500","open":"261.9913","volume":"346072"},{"close":"262.3100","high":"262.4100","low":"262.1300","open":"262.1400","volume":"299383"},{"close":"262.1700","high":"262.4200","low":"262.1700","open":"262.3100","volume":"208335"},{"close":"262.3500","high":"262.3700","low":"262.0300","open":"262.1800","volume":"256852"},{"close":"262.3900","high":"262.4200","low":"262.2550","open":"262.3700","volume":"168530"},{"close":"262.0200","high":"262.4000","low":"262.0100","open":"262.3900","volume":"254339"},{"close":"261.7400","high":"262.1400","low":"261.5390","open":"262.0300","volume":"496871"},{"close":"261.2300","high":"261.7700","low":"261.1000","open":"261.7400","volume":"372805"},{"close":"261.1900","high":"261.2800","low":"261.0400","open":"261.2200","volume":"350142"},{"close":"261.3510","high":"261.3947","low":"261.1200","open":"261.1835","volume":"375655"},{"close":"261.2600","high":"261.3800","low":"261.1330","open":"261.3700","volume":"372677"},{"close":"261.2600","high":"261.3280","low":"261.1750","open":"261.2800","volume":"232107"},{"close":"261.8100","high":"261.8100","low":"261.2400","open":"261.2600","volume":"392491"},{"close":"261.2610","high":"261.8300","low":"261.1710","open":"261.8100","volume":"570828"},{"close":"261.8700","high":"261.8700","low":"260.8800","open":"261.2600","volume":"1659296"},{"close":"264.5074","high":"264.6200","low":"262.5200","open":"262.7100","volume":"1873869"},{"close":"264.5700","high":"264.7900","low":"264.2400","open":"264.5500","volume":"848669"},{"close":"264.6150","high":"264.8070","low":"264.4600","open":"264.5900","volume":"625326"},{"close":"265.1754","high":"265.1915","low":"264.5400","open":"264.6200","volume":"765634"},{"close":"265.3600","high":"265.6400","low":"265.1100","open":"265.1788","volume":"831593"},{"close":"265.3000","high":"265.4700","low":"265.2600","open":"265.3700","volume":"518752"},{"close":"265.4600","high":"265.4600","low":"265.1400","open":"265.3100","volume":"475248"},{"close":"265.2200","high":"265.4800","low":"265.0400","open":"265.4600","volume":"479379"},{"close":"265.0952","high":"265.3573","low":"265.0584","open":"265.1452","volume":"453381"},{"close":"265.0900","high":"265.3000","low":"265.0000","open":"265.0900","volume":"296051"},{"close":"264.9705","high":"265.2200","low":"264.9700","open":"265.0942","volume":"265755"},{"close":"265.0258","high":"265.1500","low":"264.9400","open":"264.9800","volume":"251937"},{"close":"265.0799","high":"265.1600","low":"265.0000","open":"265.0200","volume":"1439008"},{"close":"265.1000","high":"265.2100","low":"265.0700","open":"265.0700","volume":"184662"},{"close":"265.1100","high":"265.2300","low":"265.0500","open":"265.1000","volume":"337719"},{"close":"264.8700","high":"265.1400","low":"264.8500","open":"265.1100","volume":"263194"},{"close":"264.7100","high":"264.9513","low":"264.6600","open":"264.8750","volume":"294152"},{"close":"264.7400","high":"264.7900","low":"264.6400","open":"264.7100","volume":"285807"},{"close":"264.8801","high":"264.9050","low":"264.5800","open":"264.7300","volume":"256213"},{"close":"265.0000","high":"265.0000","low":"264.7900","open":"264.8800","volume":"288657"},{"close":"264.8800","high":"264.9895","low":"264.7600","open":"264.9800","volume":"212999"},{"close":"265.2600","high":"265.2900","low":"264.8300","open":"264.8900","volume":"413316"},{"close":"265.3790","high":"265.4020","low":"265.2000","open":"265.2400","volume":"411821"},{"close":"265.7900","high":"265.8070","low":"265.3900","open":"265.3900","volume":"682009"},{"close":"265.7986","high":"265.8680","low":"265.6850","open":"265.8000","volume":"620887"},{"close":"266.4200","high":"266.4200","low":"265.7300","open":"265.7900","volume":"1741319"},{"close":"266.0500","high":"266.9400","low":"265.6500","open":"266.6800","volume":"1954539"},{"close":"266.0200","high":"266.3300","low":"265.7200","open":"266.0400","volume":"1030866"},{"close":"265.7001","high":"266.0800","low":"265.5600","open":"266.0500","volume":"664059"},{"close":"265.9990","high":"266.1920","low":"265.6670","open":"265.7092","volume":"627040"},{"close":"266.2402","high":"266.4595","low":"265.7089","open":"265.9152","volume":"863665"},{"close":"266.3500","high":"266.4230","low":"266.1800","open":"266.2400","volume":"621936"},{"close":"266.3900","high":"266.3900","low":"266.0700","open":"266.3600","volume":"343737"},{"close":"266.0000","high":"266.3950","low":"265.8850","open":"266.3800","volume":"394596"},{"close":"266.2699","high":"266.3100","low":"265.8400","open":"266.0099","volume":"393256"},{"close":"266.4200","high":"266.5800","low":"266.2800","open":"266.2800","volume":"391703"},{"close":"266.3355","high":"266.4400","low":"266.1600","open":"266.4114","volume":"261772"},{"close":"266.4300","high":"266.4740","low":"266.2200","open":"266.3300","volume":"331606"},{"close":"266.4600","high":"266.4700","low":"266.3400","open":"266.4300","volume":"216528"},{"close":"266.6001","high":"266.7000","low":"266.4600","open":"266.4600","volume":"373841"},{"close":"266.6800","high":"266.6900","low":"266.5200","open":"266.6300","volume":"213106"},{"close":"266.6000","high":"266.7600","low":"266.5200","open":"266.6800","volume":"300268"},{"close":"266.5443","high":"266.8509","low":"266.5106","open":"266.6043","volume":"329842"},{"close":"266.4200","high":"266.6000","low":"266.4190","open":"266.5400","volume":"221448"},{"close":"266.4800","high":"266.5800","low":"266.4200","open":"266.4400","volume":"404801"},{"close":"266.3750","high":"266.5300","low":"266.3240","open":"266.4800","volume":"226922"},{"close":"266.2100","high":"266.4100","low":"266.2100","open":"266.3900","volume":"221037"},{"close":"266.4500","high":"266.5900","low":"266.1500","open":"266.2100","volume":"335716"},{"close":"266.4400","high":"266.5400","low":"266.3300","open":"266.4500","volume":"313443"},{"close":"266.2900","high":"266.4600","low":"266.2900","open":"266.4400","volume":"351193"},{"close":"266.5800","high":"266.5800","low":"266.1390","open":"266.3000","volume":"583281"},{"close":"263.7900","high":"266.6840","low":"263.7900","open":"266.5800","volume":"2878916"},{"close":"265.8370","high":"265.9400","low":"265.4430","open":"265.7870","volume":"1697569"},{"close":"266.1500","high":"266.1700","low":"265.8700","open":"265.8900","volume":"922411"},{"close":"265.5899","high":"266.1500","low":"265.4800","open":"266.1500","volume":"719399"},{"close":"265.9946","high":"266.0300","low":"265.5300","open":"265.5902","volume":"604452"},{"close":"265.9000","high":"266.1500","low":"265.8800","open":"266.0000","volume":"479129"},{"close":"266.2100","high":"266.3000","low":"265.8300","open":"265.8900","volume":"720732"},{"close":"266.4700","high":"266.4800","low":"266.1800","open":"266.1800","volume":"462395"},{"close":"266.5222","high":"266.5900","low":"266.4210","open":"266.4800","volume":"369476"},{"close":"266.4591","high":"266.5400","low":"266.3200","open":"266.5300","volume":"275643"},{"close":"266.4300","high":"266.5900","low":"266.1700","open":"266.4600","volume":"295764"}]},"meta_data":{"1. Information":"Intraday (15min) open, high, low, close prices and volume","2. Symbol":"aapl","3. Last Refreshed":"2019-11-27 12:00:00","4. Interval":"15min","5. Output Size":"Compact","6. Time Zone":"US/Eastern"},"symbol":"aapl"}]}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_stocks-stocks-table',
    '{"_timestamp":1574874188.9645052,"stocks":[{"alias":"APPLE","data":{"01. symbol":"AAPL","02. open":"265.5800","03. high":"266.6000","04. low":"265.3100","05. price":"266.4500","06. volume":"6318685","07. latest trading day":"2019-11-27","08. previous close":"264.2900","09. change":"2.1600","10. change percent":"0.8173%"},"symbol":"aapl"},{"alias":"","data":{"01. symbol":"GOOGL","02. open":"1315.4200","03. high":"1317.6400","04. low":"1309.4742","05. price":"1311.0400","06. volume":"321988","07. latest trading day":"2019-11-27","08. previous close":"1313.0000","09. change":"-1.9600","10. change percent":"-0.1493%"},"symbol":"GOOGL"},{"alias":"Samsung Electronics","data":{"01. symbol":"005930.KS","02. open":"51800.0000","03. high":"52300.0000","04. low":"51600.0000","05. price":"52200.0000","06. volume":"7186737","07. latest trading day":"2019-11-27","08. previous close":"51800.0000","09. change":"400.0000","10. change percent":"0.7722%"},"symbol":"005930.KS"}]}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_newsfeed-news-tagesschau',
    '{"_timestamp":1580674362.733142,"news":[{"link":"http://www.tagesschau.de/inland/tempolimit-csu-kampagne-101.html","published":1580656739.000006,"summary":"Die CSU macht im Netz gegen ein Tempolimit mobil und stellt dessen Nutzen infrage. Tatsächlich erschweren fehlende Studien die Debatte. Hinter dem Zeitpunkt der Kampagne könnte aber auch politisches Kalkül stehen.","title":"CSU startet Internet-Kampagne gegen Tempolimit"},{"link":"http://www.tagesschau.de/inland/coronavirus-germersheim-109.html","published":1580656124.000006,"summary":"Die beiden aus China zurückgekehrten Passagiere, die sich mit dem Coronavirus infiziert haben, sind \"medizinisch wohlauf\". Sie wurden an der Frankfurter Uniklinik isoliert. Unter den Rückkehrern erwarten die Behörden keine weiteren Fälle.","title":"Wuhan-Rückkehrer: Zwei Infizierte, aber ohne Symptome"},{"link":"http://www.tagesschau.de/ausland/coronavirus-china-121.html","published":1580638450.000006,"summary":"Mehr als 14.000 Infizierte und 304 Tote in China: Um die Ausbreitung des Coronavirus zu verhindern, wurden in der Stadt Wenzhou drastische Einschränkungen verhängt. Neue Erkenntnisse gibt es zur Übertragung der Krankheit.","title":"Weitere Millionenstadt in China abgeriegelt"},{"link":"http://www.tagesschau.de/ausland/london-terrorangriff-101.html","published":1580662221.000006,"summary":"Mindestens drei Menschen sind in London bei einem Messerangriff auf offener Straße verletzt worden. Der mutmaßliche Täter wurde von der Polizei erschossen. Scotland Yard vermutet einen Terrorhintergrund.","title":"Mindestens drei Verletzte bei Messerangriff in London"},{"link":"http://www.tagesschau.de/regional/nordrheinwestfalen/datteln-101.html","published":1580656800.000006,"summary":"Umweltaktivisten waren auf das Gelände des umstrittenen Steinkohlekraftwerks Datteln 4 eingedrungen und haben einen Kohlebagger besetzt. Inzwischen sind die meisten Aktivisten wieder abgezogen.","title":"Besetzung von Kraftwerk Datteln 4 beendet"}]}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_newsfeed-news-nytimes',
    '{"_timestamp":1580674357.303902,"news":[{"link":"https://www.nytimes.com/2020/02/02/health/coronavirus-pandemic-china.html","published":1580669275.000006,"summary":"Rapidly rising caseloads alarm researchers, who fear the virus may make its way across the globe. But scientists cannot yet predict how many deaths may result.","title":"Wuhan Coronavirus Looks Increasingly Like a Pandemic, Experts Say"},{"link":"https://www.nytimes.com/2020/02/02/world/asia/china-coronavirus-wuhan.html","published":1580665303.000006,"summary":"It is nearly impossible to get the care they need to treat, or even diagnose, the coronavirus, say residents at the crisis’ center.","title":"Virus Pummels Wuhan, a City Short of Supplies and Overwhelmed"},{"link":"https://www.nytimes.com/2020/02/02/world/asia/china-coronavirus.html","published":1580658876.000006,"summary":"As the overall death toll passed 300, a quarantine is being expanded in Wuhan, the central Chinese city where the coronavirus began.","title":"Coronavirus Live Updates: Death in Philippines Is First Outside China"},{"link":"https://www.nytimes.com/2020/02/02/us/politics/iowa-economy-2020.html","published":1580654919.000006,"summary":"The state with a huge influence in picking presidential candidates doesn’t look much like the country as a whole. Except in the 60-plus crowd.","title":"The Graying of the American Economy Is On Display in Iowa"},{"link":"https://www.nytimes.com/2020/02/02/us/politics/Iowa-trump-democrats.html","published":1580661008.000006,"summary":"Iowa voted strongly for Barack Obama twice and for Donald Trump by nine points in 2016. It could be a national barometer again in November.","title":"Can Democrats Beat Trump in Iowa in November?"}]}'
  );
INSERT INTO FlirrorObject
VALUES(
    'module_newsfeed-news-bbc',
    '{"_timestamp":1580674352.6624372,"news":[{"link":"https://www.bbc.co.uk/news/uk-politics-43532916","published":1521971566.000006,"summary":"The company that became Cambridge Analytica boasted about interfering in foreign elections, according to documents seen by the Sunday Politics.","title":"Firm in data scandal ''made election boasts''"},{"link":"https://www.bbc.co.uk/news/world-us-canada-42679614","published":1515894043.000006,"summary":"A false missile alert was broadcast in Hawaii urging people to take shelter.","title":"Hawaii missile alert: False alarm warning broadcast"},{"link":"https://www.bbc.co.uk/news/uk-england-42664110","published":1515887169.000006,"summary":"Schoolchildren from Kirton Primary in Boston run their own bank with its own currency to learn about saving money.","title":"Dealing with debt: The mini-bankers learning how to save"},{"link":"https://www.bbc.co.uk/news/world-middle-east-35917663","published":1459244783.000001,"summary":"A man was filmed jumping from a hijacked EgyptAir plane cockpit window shortly before the hijacker surrendered.","title":"EgyptAir hijack: Man jumps from plane cockpit window"},{"link":"https://www.bbc.co.uk/news/world-europe-35915230","published":1459240930.000001,"summary":"Cyprus President Nicos Anastasiades has said that the hijacking of the plane that landed at Larnaca was not linked to terrorism.","title":"EgyptAir hijack: Cyprus president laughs off hijacking"}]}'
  );
COMMIT;
