abstract class AppConfig {
  static String BASE_URL;

  static setupEnv(Environment env) {
    switch (env) {
      case Environment.dev:
        {
          AppConfig.BASE_URL = "https://rest.dev-server.app";
          break;
        }

      case Environment.stage:
        {
          AppConfig.BASE_URL = "https://rest.stage-server.app";
          break;
        }

      case Environment.prod:
        {
          AppConfig.BASE_URL = "https://rest.prod-server.app";
        }
    }
  }
}

enum Environment { dev, stage, prod }
