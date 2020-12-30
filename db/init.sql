CREATE TABLE location (
id SERIAL PRIMARY KEY,
state_name VARCHAR(100),
state_img TEXT
);


CREATE TABLE posts (
id SERIAL PRIMARY KEY,
location_id INT REFERENCES location(id),
name VARCHAR(100) NOT NULL,
img TEXT,
content TEXT NOT NULL
);

INSERT INTO location 
(state_name, state_img)
VALUES
('Alabama', 'https://thumbor.thedailymeal.com/RA53cFe3XvaMtYYr9yPlf8gTFEE=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/ALA-USS-Alabama-shutterstock_698759881.jpg'),
('Alaska', 'https://thumbor.thedailymeal.com/ETkWtj9qKuELDmSduyhPmgtkGlU=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/ALASKA-Denali-shutterstock_1326689459.jpg'),
('Arizona', 'https://thumbor.thedailymeal.com/iSWLGGfJ-aTEveWvakrxbD2qgWc=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/AZ-Grand-Canyon-shutterstock_97706066.jpg'),
('Arkansas', 'https://thumbor.thedailymeal.com/zIrtPTSsFzCfgNcvKrmDbbgOneA=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/ARK-Hot-Springs-NP-shutterstock_295450106.jpg'),
('California', 'https://thumbor.thedailymeal.com/BGEf8DNnP08FM8c7bPqkAeOHRRg=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/CA-Golden-Gate-shutterstock_1085908274.jpg'),
('Colorado', 'https://thumbor.thedailymeal.com/IUZSPmnza6rT4fuqvYt5Pmu7Ib4=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/CO-Red-Rocks-Park-shutterstock_1112727362.jpg'),
('Connecticut', 'https://thumbor.thedailymeal.com/BRb9KqOhqW-hDqwLoKpLBLJIyJI=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/CT-Yale-shutterstock_127916003.jpg'),
('Delaware', 'https://thumbor.thedailymeal.com/vA7SbuxJ-xElD4c_5Mx9MC1UWkU=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/DE-Kalmar-Nyckel-shutterstock_248932654.jpg'),
('Florida', 'https://thumbor.thedailymeal.com/6v9RC5OtPkZIVWwMn8VJeEMwSBE=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/dreamstime_m_72375442.jpg'),
('Georgia', 'https://thumbor.thedailymeal.com/mqh3mi5hU10SfaC9_waEgmjrkGQ=/870x565/filters:focal(627x418:628x419):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/iStock-1081146492.jpg'),
('Hawaii', 'https://thumbor.thedailymeal.com/urTnXirv5Q2eLMCSoV6QhZFhp1g=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/HI-Pearl-Harbor-shutterstock_57293461.jpg'),
('Idaho', 'https://thumbor.thedailymeal.com/dABnFCVSE38kP7rCcPxB3bIErVo=/870x565/filters:focal(1050x701:1051x702):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/ID-Craters-of-the-Moon-shutterstock_511631872.jpg'),
('Illinois', 'https://thumbor.thedailymeal.com/lseu3sNCW6juKzp29gxL3GAKG0k=/870x565/filters:focal(627x417:628x418):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/iStock-136263663.jpg'),
('Indiana', 'https://thumbor.thedailymeal.com/og9PykLTtGpahMqL6RWjGIaPFjQ=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/IN-Indy-Motor-Speedway-shutterstock_398082994.jpg'),
('Iowa', 'https://thumbor.thedailymeal.com/thz1GZOcOkGNx8ueEIx14yOaPco=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/IA-Field-of-Dreams-shutterstock_1482457751.jpg'),
('Kansas', 'https://thumbor.thedailymeal.com/Lw9g2t9lUf8LEe_JaUaE-IX2d90=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/KS-twine-ball-shutterstock_1012458949.jpg'),
('Kentucky', 'https://thumbor.thedailymeal.com/2d2jBFNoA07wJhiRkL4oP9A9zQk=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/KY-Churchill-Downs-shutterstock_421475653.jpg'),
('Louisiana', 'https://thumbor.thedailymeal.com/HHTKu-nKmdVJaLD0n5HSRC-poGw=/870x565/filters:focal(627x418:628x419):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/iStock-641682476-2.jpg'),
('Maine', 'https://thumbor.thedailymeal.com/14bIcm76Oyvl2qf8Oslcn95RjpQ=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/ME-Portland-Head-Lighthouse-shutterstock_156228038.jpg'),
('Maryland', 'https://thumbor.thedailymeal.com/gKTVC7PetpQ6UKRlVTaDOiAiAlE=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/MD-Fort-McHenry-shutterstock_72805675.jpg'),
('Massachusetts', 'https://thumbor.thedailymeal.com/uHQLI-0yIqvZdlrh3W2ky6H-kX8=/870x565/filters:focal(627x418:628x419):format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/copy/iStock-182799662_0.jpg'),
('Michigan', 'https://thumbor.thedailymeal.com/Ry8VDEwQYGCxF9oUAWMyh3Eyz5Y=/870x565/filters:focal(1050x670:1051x671):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/shutterstock_599741957.jpg'),
('Minnesota', 'https://thumbor.thedailymeal.com/P8dWJplqACrdK9g4oa3UM2962rE=/870x565/filters:focal(1050x700:1051x701):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/MN-Mall-of-America-shutterstock_455150776.jpg'),
('Mississippi', 'https://thumbor.thedailymeal.com/ABAUyycYMJptFxtiCw2oJBlKUfA=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/MS-Elvis-birthplace-shutterstock_2670684.jpg'),
('Missouri', 'https://thumbor.thedailymeal.com/TA8b0IRRm4OtFMNeeTDtae7G-HE=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/MO-St-Louis-Arch-shutterstock_270828467.jpg'),
('Montana', 'https://thumbor.thedailymeal.com/_e8QZw6ql3QPmNgcyGAdGw7SwZ8=/870x565/filters:focal(1050x732:1051x733):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/MT-Going-to-the-Sun-Road-shutterstock_258203963.jpg'),
('Nebraska', 'https://thumbor.thedailymeal.com/KDtmqLvk_XqOnY4UtuTW4xl6sQU=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/NEB-Chimney-Rock-shutterstock_304991510.jpg'),
('Nevada', 'https://thumbor.thedailymeal.com/rNDmDuEUnqwpYI9HcXBiwJbp3kw=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/NEV-Las-Vegas-shutterstock_1536167384.jpg'),
('New Hampshire', 'https://thumbor.thedailymeal.com/4ye19e1-fPgnGUEpOfgTV8H3AF8=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/NH-Mt-Washington-Cog-Railway-shutterstock_718735369.jpg'),
('New Jersey', 'https://thumbor.thedailymeal.com/KxOrRTcb90Mwnz67wTuKxnZJz1I=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/NJ-Cape-May-Lighthouse-shutterstock_87439460.jpg'),
('New Mexico', 'https://thumbor.thedailymeal.com/k_tN2DpZA6qltv8xvuhMz8FAu2Y=/870x565/filters:focal(1050x699:1051x700):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/NM-Carlsbad-Caverns-shutterstock_132426206.jpg'),
('New York', 'https://thumbor.thedailymeal.com/2l4nlMizsDw9_6UsWirg5LGMVpk=/870x565/filters:focal(1737x1158:1738x1159):format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/copy/iStock-471099374_0.jpg'),
('North Carolina', 'https://thumbor.thedailymeal.com/VyKJCz9mK8hVY4xRHHkO6RJVlfU=/870x565/filters:focal(1050x732:1051x733):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/NC-Biltmore-shutterstock_1470853256.jpg'),
('North Dakota', 'https://thumbor.thedailymeal.com/QR3RyxAIzOxTOabjiVvHUYKYTMk=/870x565/filters:focal(1065x703:1066x704):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/dreamstime_m_52315940.jpg'),
('Ohio', 'https://thumbor.thedailymeal.com/_J2pJoK1Bpo_Id9KQ4l49Rk04eQ=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/OH-Rock-Hall-shutterstock_435334657.jpg'),
('Oklahoma', 'https://thumbor.thedailymeal.com/x_d530IlGpOOB2o9uDU4QnOaY48=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/OK-OKC-Memorial-shutterstock_148551203.jpg'),
('Oregon', 'https://thumbor.thedailymeal.com/0On0qGcIIObkD-tRqOvtVj0zZVk=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/OR-Crater-Lake-shutterstock_214491958.jpg'),
('Pennsylvania', 'https://thumbor.thedailymeal.com/p8DXJlF9irZc1FfuwnPAULFX-gc=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/PA-Liberty-Bell-shutterstock_526162774.jpg'),
('Rhode Island', 'https://thumbor.thedailymeal.com/7LoJr1ikc00iJx_ZIeR8lCG_S3c=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/RI-The-Breakers-shutterstock_106237637.jpg'),
('South Carolina', 'https://thumbor.thedailymeal.com/ki5FS6pkNTowSGpDa2byAvseC8E=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/SC-Fort-Sumter-shutterstock_704677273.jpg'),
('South Dakota', 'https://thumbor.thedailymeal.com/2b3MBnvqnLwZ8oa-tSp83m-uFJE=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/SD-Mount-Rushmore-shutterstock_113115559.jpg'),
('Tennessee', 'https://thumbor.thedailymeal.com/X6am2_MfQXryHP1x-MxjaBqbzlA=/870x565/filters:focal(1050x700:1051x701):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/shutterstock_735804475.jpg'),
('Texas', 'https://thumbor.thedailymeal.com/RMhOg6Sd6Yxrb9BldltP4Vy7qSc=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/TX-Alamo-shutterstock_226682122.jpg'),
('Utah', 'https://thumbor.thedailymeal.com/IlkR838IDYqAW8VCu20b3cUFPS8=/870x565/filters:focal(1050x697:1051x698):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/shutterstock_127063136.jpg'),
('Vermont', 'https://thumbor.thedailymeal.com/d2qH3Aa_HcOSorrksnVv_dqGhyI=/870x565/filters:focal(1050x763:1051x764):format(webp)/https://www.thedailymeal.com/sites/default/files/2019/12/30/copy/VT-covered-bridges-shutterstock_1338952085.jpg'),
('Virginia', 'https://thumbor.thedailymeal.com/oDWtVe_7awYIFLxAdBKjZtVsq3M=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/VA-Arlington-JFK-shutterstock_295252781.jpg'),
('Washington', 'https://thumbor.thedailymeal.com/TF7Cks0gl8RnpqRwFEJxIR0IANQ=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/WA-Space-Needle-shutterstock_547644352.jpg'),
('Washington DC', 'https://thumbor.thedailymeal.com/hrqQQXPoWEpMc1QCvRMqQIZbrM4=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/DC-White-House-shutterstock_114757342.jpg'),
('West Virginia', 'https://thumbor.thedailymeal.com/X_qJZK5Ezj3q1-m2PitHxKsU9pk=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/GettyImages-637668694.jpg'),
('Wisconsin', 'https://thumbor.thedailymeal.com/Y8GNORgQoMGka-OvdTILTcElS8c=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/WI-Taliesin-East-shutterstock_1400294813.jpg'),
('Wyoming', 'https://thumbor.thedailymeal.com/Si7CCU4oHt24_wtLmkzkRXruWhM=/870x565/filters:format(webp)/https://www.thedailymeal.com/sites/default/files/slideshows/1895642/2219043/WY-Old-Faithful-shutterstock_677567317.jpg');


INSERT INTO posts
(location_id, name, img, content)
VALUES
(3, 'East Coast Super Subs', 'https://fastly.4sqi.net/img/general/600x600/66bCDReuB4wMmyYyMncP3nbB8uHnUMcMyPFzli8A_1Q.jpg', 'Amazing subs and great decor!'),
(3, 'Aqui Con El Nene', 'https://s3-media0.fl.yelpcdn.com/bphoto/Uqbn6_JLpP1cy_x3e_8RUg/o.jpg', 'All the food is amazing but I espically love the Mexican hot dogs!'),
(44, 'R Pizza Place', 'https://theswellutah.com/wp-content/uploads/2019/04/R_Pizza_Place_03-1920x1280.jpg', 'Great pizza, pasta, breadsticks, etc. It''s out of the way but if you are in the area do yourself a favor and try it'),
(44, 'Hruska''s Kolaches', 'https://s3-media0.fl.yelpcdn.com/bphoto/QNa--LvrwtZVNjJ-NArzmQ/o.jpg', 'Only open for breakfast and they go fast but they are worth getting up early for.')
(23, 'Smoke In The Pit', 'https://media-cdn.tripadvisor.com/media/photo-s/0b/7d/98/14/definitely-off-the-beaten.jpg', 'Small place in the cut, food was delish and was ready quickly');