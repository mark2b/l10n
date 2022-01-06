import PackageDescription

 let package = Package(
     name: "l10n",
     platforms: [
         .iOS(.v12),
     ],
     products: [
         .library(
             name: "l10n",
             targets: ["l10n"]
         ),
     ],
     dependencies: [],
     targets: [
         .target(
             name: "l10n",
             path: "Classes",
             exclude: [
             ]
         ),
     ]
 )
