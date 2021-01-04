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
(44, 'Hruska''s Kolaches', 'https://s3-media0.fl.yelpcdn.com/bphoto/QNa--LvrwtZVNjJ-NArzmQ/o.jpg', 'Only open for breakfast and they go fast but they are worth getting up early for.'),
(23, 'Smoke In The Pit', 'https://media-cdn.tripadvisor.com/media/photo-s/0b/7d/98/14/definitely-off-the-beaten.jpg', 'Small place in the cut, food was delish and was ready quickly'),
(1, 'Chez Fonfon', 'https://media-cdn.tripadvisor.com/media/photo-s/11/c9/26/2b/img953825-largejpg.jpg', 'The name of this place merits a slight snicker, but save your smiles for the food, because it''s very good French bistro fare.'),
(2, 'Tommy’s Burger Stop', 'https://tommysburgerstop.com/wp-content/uploads/2014/07/Tommys-Burger-stop-storefront.jpg', 'Really good burgers with a place to go visit and eat with good service.'),
(4, 'Big Orange', 'https://armoneyandpolitics.com/wp-content/uploads/2017/08/09-03-15-Big-Orange-Building.jpg', 'The burgers are even better than we had been told.'),
(5, 'Father’s Office', 'https://fathersoffice.com/wp-content/uploads/2018/09/santa-monica-e1537671336943.jpg', 'The Father’s Office burger (in Santa Monica and Culver City) is amazing.'),
(6, 'Steuben’s', 'https://www.milehighhappyhour.com/wp-content/uploads/2013/10/Steubens-1000x500.jpg', 'Ditch the diet, "bring your tats" and "be prepared to enjoy the hell" out of regional American "comfort food done right" '),
(7, 'Louis’ Lunch', 'https://i.pinimg.com/originals/d6/39/11/d63911e2cb4700a11581a900d8dfaac3.jpg', 'Legend has it that the original American hamburger was conceived at this circa-1900 New Haven joint where burgers are still served on toast alongside potato salad, chips and homemade pie.'),
(8, 'Farmer & the Cow', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC2oQquF9Kh7KLu-k-t3O2KSe6i9svoefekQ&usqp=CAU', 'Great service, friendly pub atmosphere, very tasty milkshakes and burgers.'),
(9, 'Michael’s Genuine Food & Drink', 'https://i.pinimg.com/originals/3f/3a/b5/3f3ab58d3cd5f8ce0330b84482cbb426.jpg', 'Chef-owner Michael Schwartz "is a genius" say "serial" local patrons who join "way-out-of-towners" in hailing this "Design District pioneer" for its "imaginative" New American dishes'),
(10, 'The Vortex Bar And Grill', 'https://upload.wikimedia.org/wikipedia/commons/c/cf/Atlanta_010.jpg', 'Over-the-top burgers such as a triple cheeseburger between two grilled cheese sandwiches headline a staggering array of playfully indulgent pub grub at this Little Five Points bar and grill.'),
(11, 'W&M Bar-B-Q Burgers', 'https://www.kynbo.com/images/restaurants/photos/full_A5ae1429fb490f2.30496732.png', 'Burgers are moist, toppings are great, and atmosphere unique!'),
(12, 'Bittercreek Alehouse', 'https://millennialmagazine.com/wp-content/uploads/2016/05/Bittercreek-Alehouse-T.jpg', 'Love the burger, Pizza, salad, fries, pork tacos, Etc!'),
(13, 'Au Cheval', 'https://kirbiecravings.com/wp-content/uploads/2017/12/au-cheval-10a-700x680.jpg', 'I enjoyed the seasoning, aioli sauce, pickles, juicy beef..all of it.'),
(14, 'Workingman’s Friend', 'https://www.gannett-cdn.com/presto/2018/10/24/USAT/90179420-46f4-4b72-bc34-73fe73f933af-WorkingMansFriend-3.jpg?crop=4031,2267,x0,y424&width=660&height=372&format=pjpg&auto=webp', 'Great local place to eat and enjoy good food and service.'),
(15, 'Zombie Burger & Drink Lab', 'https://media-cdn.tripadvisor.com/media/photo-s/05/f1/e7/48/zombie-burger-drink-lab.jpg', 'This place has a great staff decent food and prices were fair for the area.'),
(16, 'Cozy Inn', 'https://i.pinimg.com/originals/81/f2/03/81f20392219aae80f204f4ccba4a976d.jpg', 'The flavor and meat to bun ratio is perfect for sliders.'),
(17, 'Mussel & Burger Bar', 'https://foodanddine.com/wp-content/uploads/2016/10/MBB.jpg', 'Great ambience, super friendly staff and absolutely delicious food!'),
(18, 'The Company Burger', 'https://picturefood.files.wordpress.com/2011/08/img_2253.jpg', 'Great burgers, great price and wonderful staff...!yum yum'),
(19, 'BRGR Bar', 'https://images.squarespace-cdn.com/content/v1/588b68af3e00be9b899b94a3/1492640820355-FZV8IZNCQS439IXSZ0J7/ke17ZwdGBToddI8pDm48kDSsBcv3opSU9m_V2HwLt6F7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UVFHb7mxhdsxEvBJsDFYxLNreaXrjqILfEhggHBxqLsf8_pbJxfYEUvZETK74w9_lg/image-asset.jpeg', 'From the service, to the drinks and food...this was our FAVORITE place to go!'),
(20, 'The Abbey Burger Bistro', 'https://abbeyburger.com/wp-content/uploads/2017/10/Twist-Abbey-1030x688.jpg', 'Great service, amazing food (seriously, try the crab tots) and great atmosphere.'),
(21, 'Craigie on Main', 'https://media-cdn.tripadvisor.com/media/photo-s/11/3c/e1/b8/craigie-on-main-exterior.jpg', 'The food is always well prepared and yummy, workers hands over awesome service.'),
(22, 'Redamak’s', 'https://lh3.googleusercontent.com/proxy/k8MZEI8GHJRwvL5t58vlubYzg9U2Ajqn583lsVOg4KtOzLPyTGD5iRWLHeHwkPH0MyMo3_aCDddvnswGvu9CVpr-TqipIDPiNVTblLUZoHDrL82xdhn4myHaVeP022G8gQlewDE', 'The food, the service, the atmosphere are like bacon and eggs.'),
(23, 'Matt’s Bar', 'https://aht.seriouseats.com/images/2011/09/20110922-matts-exterior.jpg', 'Friendly service, great atmosphere, no hurry to eat and run.'),
(24, 'Fine & Dandy', 'https://media-cdn.tripadvisor.com/media/photo-s/12/96/f4/4d/exterior.jpg', 'Upscale burger joint with a really good burger, good location, and good staff.'),
(25, 'Winstead’s', 'https://npr.brightspotcdn.com/dims4/default/1d647ff/2147483647/strip/true/crop/2048x1536+0+0/resize/880x660!/quality/90/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Flegacy%2Fsites%2Fkcur%2Ffiles%2F202003%2F48684323986_a85f37eaa3_k.jpg', 'Great food at a great price and perfect service by the friendliest staff!');


