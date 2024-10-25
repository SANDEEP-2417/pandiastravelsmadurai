'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "884162bda4d529cd5b2b83929d82edc8",
"assets/AssetManifest.bin.json": "443f42f50dfbaf4295d4c7f9c9fdf941",
"assets/AssetManifest.json": "24349b90bd290d709d6afec28d368223",
"assets/assets/12280.jpg": "d49ab3b3f3f5918c536d0b398427d58e",
"assets/assets/Add%2520a%2520heading.png": "1235f17e5424fabdb41d6aa3b4b84ba6",
"assets/assets/APJ_memorial-banner.webp": "aee0aaf25fccf49bba2abb0078a8dbdc",
"assets/assets/APJ_memorial-image-1.jpg": "8446a82085ee41b069a6c5bafc9631b2",
"assets/assets/APJ_memorial-image-2.jpg": "041ef1ce2a2c44a4ae9ea695e1ae301f",
"assets/assets/APJ_memorial-image-3.jpg": "133bce6dc92dda2b1f4b24c30934b035",
"assets/assets/bg_image.png": "24919f137e7a30e709245e90c29d5575",
"assets/assets/bus-removebg-preview.png": "cdc0f524e7677c55dc1e1dd8ff027041",
"assets/assets/dark-theme-16.jpg": "55ac5eb64dbae8aff3db124a8b45f0f6",
"assets/assets/Dhanushkodi-image-1.webp": "9aa4f8b5b57899dba2dc3d33efe665f9",
"assets/assets/dhanushkodi-image-2.jpg": "8fb74a856bfdb29a0a7a2077093d97a3",
"assets/assets/dhanushkodi-image-3.jpg": "cf6d10c85552ae1414674d793f60126c",
"assets/assets/fonts/Poppins-Black.ttf": "14d00dab1f6802e787183ecab5cce85e",
"assets/assets/fonts/Poppins-BlackItalic.ttf": "e9c5c588e39d0765d30bcd6594734102",
"assets/assets/fonts/Poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/Poppins-BoldItalic.ttf": "19406f767addf00d2ea82cdc9ab104ce",
"assets/assets/fonts/Poppins-ExtraBold.ttf": "d45bdbc2d4a98c1ecb17821a1dbbd3a4",
"assets/assets/fonts/Poppins-ExtraBoldItalic.ttf": "8afe4dc13b83b66fec0ea671419954cc",
"assets/assets/fonts/Poppins-ExtraLight.ttf": "6f8391bbdaeaa540388796c858dfd8ca",
"assets/assets/fonts/Poppins-ExtraLightItalic.ttf": "a9bed017984a258097841902b696a7a6",
"assets/assets/fonts/Poppins-Italic.ttf": "c1034239929f4651cc17d09ed3a28c69",
"assets/assets/fonts/Poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/assets/fonts/Poppins-LightItalic.ttf": "0613c488cf7911af70db821bdd05dfc4",
"assets/assets/fonts/Poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/fonts/Poppins-MediumItalic.ttf": "cf5ba39d9ac24652e25df8c291121506",
"assets/assets/fonts/Poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/Poppins-SemiBold.ttf": "6f1520d107205975713ba09df778f93f",
"assets/assets/fonts/Poppins-SemiBoldItalic.ttf": "9841f3d906521f7479a5ba70612aa8c8",
"assets/assets/fonts/Poppins-Thin.ttf": "9ec263601ee3fcd71763941207c9ad0d",
"assets/assets/fonts/Poppins-ThinItalic.ttf": "01555d25092b213d2ea3a982123722c9",
"assets/assets/gandhi%2520museum%2520madurai%25203.jpg": "e635eae0b4cd56be049e803196c0a00f",
"assets/assets/Gandhi_museum-image-1.webp": "65dee806d8fb55e64996a7c30a48f08a",
"assets/assets/Gandhi_museum_banner-image.jpg": "114b57b690cad7d5f2e19a62618ba53e",
"assets/assets/Gandhi_museum_image-2.jpg": "81841beff6f7814fa66c81f369e1cef0",
"assets/assets/homebgimage.png": "1ceb24c30ed5b20b210dbde4b212111c",
"assets/assets/image.jpg": "7cb94b8bef45ab14a7876dbaf2c99068",
"assets/assets/kdfmgf,tf.jpg": "6a3570065ca7350a43d1aaf7e0e6a465",
"assets/assets/KK-Devi-Temple-banner.jpg": "f6132e891d381bda0fd5df0b264009b4",
"assets/assets/KK-Devi-Temple-image-1.jpg": "4a66308361123b95c236fb99b02be0e2",
"assets/assets/KK-devi-Temple-image-2.jpg": "95a7fbb35e44c709e35f407fefee42ea",
"assets/assets/KK-Devi-Temple-image-3.webp": "eab6d51de2877eac184c47cc91f7da25",
"assets/assets/KK_thiruvaluvar_banner.jpg": "494662373bf31cc5e0f23c2d8a9e8b51",
"assets/assets/KK_thiruvaluvar_image_2.jpg": "2ad94a2df522d06c3902b397da42e656",
"assets/assets/KK_thiruvaluvar_image_3.jpg": "c6825b7adf300dfe226b75da1cf626e2",
"assets/assets/KK_Tiruvaluvar_image_1.webp": "530f60c78c41405aaa9b6b7b2375ea28",
"assets/assets/KK_Tiruvni_banner.jpg": "fcabc67518a3ccb88a90e84970229b3b",
"assets/assets/KK_tiruvni_image_2.jpg": "4053ca575970a8e80617262dc537ce6c",
"assets/assets/KK_tiruvni_image_3.jpg": "9f8bfbe90d592072c52faf0af4802678",
"assets/assets/KK_Tiruvni_og_banner.jpg": "c1ba46847cd3c78d504609a00eab2e64",
"assets/assets/KK_tour_package.jpg": "a664ff5e050d4561c11ead7cf5485ad0",
"assets/assets/Kodaikanal-768x432.jpg": "6c1e4b9c1c554f4f31092f1086b9ca60",
"assets/assets/Kodaikanal_Package_Tour.jpg": "c4fbe6bf1e7529de52d79c076cc7ad3f",
"assets/assets/Madurai-meenashik.webp": "bbb1ab44bc0520642c9c7bacbd6c487a",
"assets/assets/mahaga-raja-palce-banner.jpg": "5e79abd0325d7a3f65f22e4dec775401",
"assets/assets/mahaga-raja-place-image-1.jpg": "705db3e4f6c694403ca525895fe5f417",
"assets/assets/mahaga-raja-place-image-2.png": "0cc7a8327f50d1619505d5e61381da92",
"assets/assets/mahaga-raja-place-image-3.jpg": "379bbc056ae6dbdbc48e1ac246a58fd9",
"assets/assets/MD_tour_package.jpg": "3ea0ff7479507ad13a2296a146e8440d",
"assets/assets/Meenakshi-Amman-Temple-image-2.jpg": "56177bc6a794f3f99177d56352ef0bbc",
"assets/assets/Meenakshi-amman-temple-image-3.jpg": "661456df626cbf341e9555459ba48650",
"assets/assets/Meenakshi_amman_temple_image_1.jpg": "1b77e92f84f45c653b4eb1b5a8075943",
"assets/assets/OIP%2520(1).jpeg": "77df958c7a19c94bd6d7710008ef5816",
"assets/assets/OIP.jpeg": "98af12a37a8c89ae9e465de00d1df400",
"assets/assets/OIP.jpg": "c9f67b5cf43fe08cf365900eedadebff",
"assets/assets/Ooty_tour_package.png": "e88b0bfba1134448af7b5d47bf5fd8c2",
"assets/assets/Package_bg.jpg": "e1a1c0519c3a483e213dfa8f7f5ad157",
"assets/assets/ramar-palam-banner.png": "d37ffffc260597c964bec28bbd24fb5b",
"assets/assets/ramar-palam-image-1.webp": "7bb73360955a38b49350a073c8d15fdd",
"assets/assets/ramar-palam-image-2.jpg": "cdc939c147142ca15309390a8d80b563",
"assets/assets/ramar-palam-image-3.jpeg": "b07b985e2b28c12d5a13e672eac44cd0",
"assets/assets/rameswaram-temple.jpg": "e7df82fed6c5c579b2b4e66791f6b017",
"assets/assets/rameswaram-temple2.jpg": "62e95bd2b82b6385fe7b400f3ef543d7",
"assets/assets/rameswaram_tour_package.jpg": "d74de4f2c75dc137fc07d1bd1be03eb0",
"assets/assets/Sitha-theertham-banner.jpg": "b9edec8ff8ab284b03c1923dee042c38",
"assets/assets/Sitha-theertham-image-1.jpg": "41a223592dc4e7775f377aefba541b76",
"assets/assets/Sitha-theertham-image-2.webp": "c55eb88d6a94c2b076e8b282fae2e4e8",
"assets/assets/Sitha-theertham-image-3.jpg": "4a6ff28af8553cab05741a7e66b2f04f",
"assets/assets/star-ocean-photography-vivekanandapuram-kanyakumari-photo-studios-nuycmnreqf.jpg": "672984079b79844968862c937722102e",
"assets/assets/tiru_tour_package.jpg": "a19ee6bc6db68740e1138435494891c1",
"assets/assets/tn-67-side2-removebg-preview.png": "f3d07291f13dac492374f69af9acf83a",
"assets/assets/travel_care-removebg-preview.png": "bdfeb8f7face591763c62d8d0dc2091d",
"assets/assets/travel_partner-removebg-preview.png": "7240c0a58fb59dd0b368191f1f074c4f",
"assets/assets/travel_price-removebg-preview.png": "6205db4c407743ec2c0132521e785da4",
"assets/assets/Vishnu-temple-banner.jpg": "abf4cb2afd007fc9a1d8d3f8f86fcfd1",
"assets/assets/Vishnu-temple-image-1.jpg": "f33f9ac9e08a09b9956b80b211dc87d2",
"assets/assets/vishnu-temple-image-2.jpg": "2914e00a0d3251275d06d06db5c04a47",
"assets/assets/Vishnu-temple-image-3.1.jpg": "f5b96f2336bd264017a271308c26dfa5",
"assets/assets/vivka_kk_image_banner.jpg": "f952f00de004f7f81a626e64c1527866",
"assets/assets/vivk_kk-image-2.webp": "b8b46a34c64227eb480c8333979517bd",
"assets/assets/vivk_kk_image-1.jpg": "14efd884651424b985f178f8f78755ff",
"assets/assets/vivk_kk_image-3.webp": "01e5308b477662195dd2579bcd565c93",
"assets/assets/whatsapp_logo-removebg-preview.png": "8f678c7302c6be7cc57c4e85166def10",
"assets/assets%255C12280.jpg": "d49ab3b3f3f5918c536d0b398427d58e",
"assets/assets%255CAdd%2520a%2520heading.png": "1235f17e5424fabdb41d6aa3b4b84ba6",
"assets/assets%255CAPJ_memorial-banner.webp": "aee0aaf25fccf49bba2abb0078a8dbdc",
"assets/assets%255CAPJ_memorial-image-1.jpg": "8446a82085ee41b069a6c5bafc9631b2",
"assets/assets%255CAPJ_memorial-image-2.jpg": "041ef1ce2a2c44a4ae9ea695e1ae301f",
"assets/assets%255CAPJ_memorial-image-3.jpg": "133bce6dc92dda2b1f4b24c30934b035",
"assets/assets%255Cbg_image.png": "24919f137e7a30e709245e90c29d5575",
"assets/assets%255Cbus-removebg-preview.png": "cdc0f524e7677c55dc1e1dd8ff027041",
"assets/assets%255Cdark-theme-16.jpg": "55ac5eb64dbae8aff3db124a8b45f0f6",
"assets/assets%255CDhanushkodi-image-1.webp": "9aa4f8b5b57899dba2dc3d33efe665f9",
"assets/assets%255Cdhanushkodi-image-2.jpg": "8fb74a856bfdb29a0a7a2077093d97a3",
"assets/assets%255Cdhanushkodi-image-3.jpg": "cf6d10c85552ae1414674d793f60126c",
"assets/assets%255Cgandhi%2520museum%2520madurai%25203.jpg": "e635eae0b4cd56be049e803196c0a00f",
"assets/assets%255CGandhi_museum-image-1.webp": "65dee806d8fb55e64996a7c30a48f08a",
"assets/assets%255CGandhi_museum_banner-image.jpg": "114b57b690cad7d5f2e19a62618ba53e",
"assets/assets%255CGandhi_museum_image-2.jpg": "81841beff6f7814fa66c81f369e1cef0",
"assets/assets%255Chomebgimage.png": "1ceb24c30ed5b20b210dbde4b212111c",
"assets/assets%255Cimage.jpg": "7cb94b8bef45ab14a7876dbaf2c99068",
"assets/assets%255Ckdfmgf,tf.jpg": "6a3570065ca7350a43d1aaf7e0e6a465",
"assets/assets%255CKK-Devi-Temple-banner.jpg": "f6132e891d381bda0fd5df0b264009b4",
"assets/assets%255CKK-Devi-Temple-image-1.jpg": "4a66308361123b95c236fb99b02be0e2",
"assets/assets%255CKK-devi-Temple-image-2.jpg": "95a7fbb35e44c709e35f407fefee42ea",
"assets/assets%255CKK-Devi-Temple-image-3.webp": "eab6d51de2877eac184c47cc91f7da25",
"assets/assets%255CKK_thiruvaluvar_banner.jpg": "494662373bf31cc5e0f23c2d8a9e8b51",
"assets/assets%255CKK_thiruvaluvar_image_2.jpg": "2ad94a2df522d06c3902b397da42e656",
"assets/assets%255CKK_thiruvaluvar_image_3.jpg": "c6825b7adf300dfe226b75da1cf626e2",
"assets/assets%255CKK_Tiruvaluvar_image_1.webp": "530f60c78c41405aaa9b6b7b2375ea28",
"assets/assets%255CKK_Tiruvni_banner.jpg": "fcabc67518a3ccb88a90e84970229b3b",
"assets/assets%255CKK_tiruvni_image_2.jpg": "4053ca575970a8e80617262dc537ce6c",
"assets/assets%255CKK_tiruvni_image_3.jpg": "9f8bfbe90d592072c52faf0af4802678",
"assets/assets%255CKK_Tiruvni_og_banner.jpg": "c1ba46847cd3c78d504609a00eab2e64",
"assets/assets%255CKK_tour_package.jpg": "a664ff5e050d4561c11ead7cf5485ad0",
"assets/assets%255CKodaikanal-768x432.jpg": "6c1e4b9c1c554f4f31092f1086b9ca60",
"assets/assets%255CKodaikanal_Package_Tour.jpg": "c4fbe6bf1e7529de52d79c076cc7ad3f",
"assets/assets%255CMadurai-meenashik.webp": "bbb1ab44bc0520642c9c7bacbd6c487a",
"assets/assets%255Cmahaga-raja-palce-banner.jpg": "5e79abd0325d7a3f65f22e4dec775401",
"assets/assets%255Cmahaga-raja-place-image-1.jpg": "705db3e4f6c694403ca525895fe5f417",
"assets/assets%255Cmahaga-raja-place-image-2.png": "0cc7a8327f50d1619505d5e61381da92",
"assets/assets%255Cmahaga-raja-place-image-3.jpg": "379bbc056ae6dbdbc48e1ac246a58fd9",
"assets/assets%255CMD_tour_package.jpg": "3ea0ff7479507ad13a2296a146e8440d",
"assets/assets%255CMeenakshi-Amman-Temple-image-2.jpg": "56177bc6a794f3f99177d56352ef0bbc",
"assets/assets%255CMeenakshi-amman-temple-image-3.jpg": "661456df626cbf341e9555459ba48650",
"assets/assets%255CMeenakshi_amman_temple_image_1.jpg": "1b77e92f84f45c653b4eb1b5a8075943",
"assets/assets%255COIP.jpeg": "98af12a37a8c89ae9e465de00d1df400",
"assets/assets%255COIP.jpg": "c9f67b5cf43fe08cf365900eedadebff",
"assets/assets%255COoty_tour_package.png": "e88b0bfba1134448af7b5d47bf5fd8c2",
"assets/assets%255CPackage_bg.jpg": "e1a1c0519c3a483e213dfa8f7f5ad157",
"assets/assets%255Cramar-palam-banner.png": "d37ffffc260597c964bec28bbd24fb5b",
"assets/assets%255Cramar-palam-image-1.webp": "7bb73360955a38b49350a073c8d15fdd",
"assets/assets%255Cramar-palam-image-2.jpg": "cdc939c147142ca15309390a8d80b563",
"assets/assets%255Cramar-palam-image-3.jpeg": "b07b985e2b28c12d5a13e672eac44cd0",
"assets/assets%255Crameswaram-temple.jpg": "e7df82fed6c5c579b2b4e66791f6b017",
"assets/assets%255Crameswaram-temple2.jpg": "62e95bd2b82b6385fe7b400f3ef543d7",
"assets/assets%255Crameswaram_tour_package.jpg": "d74de4f2c75dc137fc07d1bd1be03eb0",
"assets/assets%255CSitha-theertham-banner.jpg": "b9edec8ff8ab284b03c1923dee042c38",
"assets/assets%255CSitha-theertham-image-1.jpg": "41a223592dc4e7775f377aefba541b76",
"assets/assets%255CSitha-theertham-image-2.webp": "c55eb88d6a94c2b076e8b282fae2e4e8",
"assets/assets%255CSitha-theertham-image-3.jpg": "4a6ff28af8553cab05741a7e66b2f04f",
"assets/assets%255Cstar-ocean-photography-vivekanandapuram-kanyakumari-photo-studios-nuycmnreqf.jpg": "672984079b79844968862c937722102e",
"assets/assets%255Ctiru_tour_package.jpg": "a19ee6bc6db68740e1138435494891c1",
"assets/assets%255Ctn-67-side2-removebg-preview.png": "f3d07291f13dac492374f69af9acf83a",
"assets/assets%255Ctravel_care-removebg-preview.png": "bdfeb8f7face591763c62d8d0dc2091d",
"assets/assets%255Ctravel_partner-removebg-preview.png": "7240c0a58fb59dd0b368191f1f074c4f",
"assets/assets%255Ctravel_price-removebg-preview.png": "6205db4c407743ec2c0132521e785da4",
"assets/assets%255CVishnu-temple-banner.jpg": "abf4cb2afd007fc9a1d8d3f8f86fcfd1",
"assets/assets%255CVishnu-temple-image-1.jpg": "f33f9ac9e08a09b9956b80b211dc87d2",
"assets/assets%255Cvishnu-temple-image-2.jpg": "2914e00a0d3251275d06d06db5c04a47",
"assets/assets%255CVishnu-temple-image-3.1.jpg": "f5b96f2336bd264017a271308c26dfa5",
"assets/assets%255Cvivka_kk_image_banner.jpg": "f952f00de004f7f81a626e64c1527866",
"assets/assets%255Cvivk_kk-image-2.webp": "b8b46a34c64227eb480c8333979517bd",
"assets/assets%255Cvivk_kk_image-1.jpg": "14efd884651424b985f178f8f78755ff",
"assets/assets%255Cvivk_kk_image-3.webp": "01e5308b477662195dd2579bcd565c93",
"assets/assets%255Cwhatsapp_logo-removebg-preview.png": "8f678c7302c6be7cc57c4e85166def10",
"assets/FontManifest.json": "88b6bef5822e927b134b5b4780ec5192",
"assets/fonts/MaterialIcons-Regular.otf": "edddbad1a79351db2bb02b4ac0509a7d",
"assets/NOTICES": "95c90c73be5f0cc6c902f08b6c714d2a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "32cc31c7f950543ad75e035fcaeb2892",
"canvaskit/canvaskit.js.symbols": "728716077cf83d8ca497dcb5725821a9",
"canvaskit/canvaskit.wasm": "9e6448228818ed7960a8f884b48b2b05",
"canvaskit/chromium/canvaskit.js": "6a5bd08897043608cb8858ce71bcdd8a",
"canvaskit/chromium/canvaskit.js.symbols": "9c00c32a14d98629547938c2fc8ae42f",
"canvaskit/chromium/canvaskit.wasm": "7961abedf40866ed387ed84d63c20e12",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.js.symbols": "a7880be4d2908e6f3f32501199eabaa9",
"canvaskit/skwasm.wasm": "1d31abf58905d32e2df4296d63dbe729",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"flutter_bootstrap.js": "ce3cc9ca13c8153387b0fa35591027af",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7378b25108a7a80cd7bc885c8abaf283",
"/": "7378b25108a7a80cd7bc885c8abaf283",
"main.dart.js": "7bb2532da2c74a0143825a65992b2505",
"manifest.json": "2001390d9a47ed196978a42553094ca2",
"version.json": "83e7ebf28252edf99df3457e0e3fbe22"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
