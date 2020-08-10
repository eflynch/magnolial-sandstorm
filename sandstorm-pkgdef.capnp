@0xc620f5ae132b6548;
using Spk = import "/sandstorm/package.capnp";

const pkgdef :Spk.PackageDefinition = (
  id = "na9kkqdry38q7gnve8yxwwm4zc5q9jsc77sweks8y92gge385ufh",

  manifest = (
    appTitle = (defaultText = "Magnolia"),
    appVersion = 1,
    appMarketingVersion = (defaultText = "1.0.0"),
    metadata = (
      icons = (
        appGrid = (png = (dpi1x = embed "client/icon.png")),
        grain = (png = (dpi1x = embed "client/icon.png")),
        market = (png = (dpi1x = embed "client/icon.png")),
      ),
      codeUrl = "https://github.com/eflynch/magnolial",
    ),
    actions = [
      ( title = (defaultText = "Untitled"),
        nounPhrase = (defaultText = "file"),
        command = .myCommand
      )
    ],
    continueCommand = .myCommand
  ),

  sourceMap = (
    searchPath = [
      ( packagePath = "server", sourcePath = "server" ),
      ( packagePath = "client", sourcePath = "client" ),
    ]
  ),

  alwaysInclude = [ "." ]
);

const myCommand :Spk.Manifest.Command = (
  argv = ["/server"],
  environ = [
    (key = "PATH", value = "/usr/local/bin:/usr/bin:/bin")
  ]
);
