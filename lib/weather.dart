// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, depend_on_referenced_packages, non_constant_identifier_names


class Weather {
  String? city;
  int? temp;
  String? image;
  String? text;
  int? is_day;
  int? wind_speed;
  int? humidity;
  int? uv;

  Weather(
      {this.city,
      this.temp,
      this.image,
      this.text,
      this.wind_speed,
      this.humidity,
      this.uv,
      this.is_day});

  Weather.fromCurrent(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["current"]["temp_c"].toInt();
    image = json["current"]["condition"]["icon"];
    text = json["current"]["condition"]["text"];
    is_day = json["current"]["is_day"];
    wind_speed = json["current"]["wind_kph"].toInt();
    humidity = json["current"]["humidity"].toInt();
    uv = json["current"]["uv"].toInt();
  }

  // History
  Weather.fromHistory0(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][0]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][0]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][0]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][0]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][0]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][0]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory1(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][1]["hour"][1]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][1]["hour"][1]["condition"]["icon"];
    text = json["forecast"]["forecastday"][1]["hour"][1]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][1]["hour"][1]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][1]["hour"][1]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][1]["hour"][1]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
  }
  Weather.fromHistory2(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][2]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][2]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][2]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][2]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][2]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][2]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory3(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][3]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][3]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][3]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][3]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][3]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][3]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory4(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][4]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][4]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][4]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][4]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][4]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][4]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory5(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][5]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][5]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][5]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][5]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][5]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][5]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory6(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][6]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][6]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][6]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][6]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][6]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][6]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory7(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][7]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][7]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][7]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][7]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][7]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][7]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory8(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][8]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][8]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][8]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][8]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][8]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][8]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory9(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][9]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][9]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][9]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][9]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][9]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][9]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory10(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][10]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][10]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][10]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][10]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][10]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][10]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory11(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][11]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][11]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][11]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][11]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][11]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][11]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory12(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][12]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][12]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][12]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][12]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][12]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][12]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory13(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][13]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][13]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][13]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][13]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][13]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][13]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory14(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][14]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][14]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][14]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][14]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][14]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][14]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory15(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][15]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][15]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][15]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][15]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][15]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][15]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory16(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][16]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][16]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][16]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][16]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][16]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][16]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory17(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][17]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][17]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][17]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][17]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][17]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][17]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory18(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][18]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][18]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][18]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][18]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][18]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][18]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory19(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][19]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][19]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][19]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][19]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][19]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][19]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory20(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][20]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][20]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][20]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][20]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][20]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][20]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory21(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][21]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][21]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][21]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][21]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][21]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][21]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory22(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][22]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][22]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][22]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][22]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][22]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][22]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }
  Weather.fromHistory23(Map<String, dynamic> json) {
    city = json["location"]["name"];
    temp = json["forecast"]["forecastday"][0]["hour"][23]["temp_c"].toInt();
    image = json["forecast"]["forecastday"][0]["hour"][23]["condition"]["icon"];
    text = json["forecast"]["forecastday"][0]["hour"][23]["condition"]["text"];
    is_day = json["forecast"]["forecastday"][0]["hour"][23]["is_day"];
    wind_speed =
        json["forecast"]["forecastday"][0]["hour"][23]["wind_kph"].toInt();
    humidity =
        json["forecast"]["forecastday"][0]["hour"][23]["humidity"].toInt();
    uv = json["forecast"]["forecastday"][0]["day"]["uv"].toInt();
  }


  // Forecast
  Weather.fromForecast1_0(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][0]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][0]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][0]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][0]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][0]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][0]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_1(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][1]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][1]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][1]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][1]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][1]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][1]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_2(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][2]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][2]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][2]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][2]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][2]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][2]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_3(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][3]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][3]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][3]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][3]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][3]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][3]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_4(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][4]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][4]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][4]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][4]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][4]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][4]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_5(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][5]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][5]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][5]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][5]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][5]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][5]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_6(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][6]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][6]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][6]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][6]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][6]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][6]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_7(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][7]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][7]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][7]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][7]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][7]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][7]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_8(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][8]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][8]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][8]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][8]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][8]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][8]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_9(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][9]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][9]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][9]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][9]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][9]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][9]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_10(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][10]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][10]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][10]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][10]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][10]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][10]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_11(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][11]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][11]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][11]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][11]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][11]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][11]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_12(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][12]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][12]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][12]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][12]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][12]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][12]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_13(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][13]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][13]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][13]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][13]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][13]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][13]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_14(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][14]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][14]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][14]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][14]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][14]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][14]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_15(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][15]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][15]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][15]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][15]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][15]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][15]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_16(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][16]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][16]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][16]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][16]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][16]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][16]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_17(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][17]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][17]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][17]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][17]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][17]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][17]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_18(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][18]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][18]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][18]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][18]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][18]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][18]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_19(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][19]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][19]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][19]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][19]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][19]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][19]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_20(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][20]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][20]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][20]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][20]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][20]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][20]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_21(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][21]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][21]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][21]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][21]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][21]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][21]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_22(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][22]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][22]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][22]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][22]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][22]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][22]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast1_23(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][1]["hour"][23]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][1]["hour"][23]["condition"]["icon"];
        text = json["forecast"]["forecastday"][1]["hour"][23]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][1]["hour"][23]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][1]["hour"][23]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][1]["hour"][23]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][1]["day"]["uv"].toInt();
        }
Weather.fromForecast2_0(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][0]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][0]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][0]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][0]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][0]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][0]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_1(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][1]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][1]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][1]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][1]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][1]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][1]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_2(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][2]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][2]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][2]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][2]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][2]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][2]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_3(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][3]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][3]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][3]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][3]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][3]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][3]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_4(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][4]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][4]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][4]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][4]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][4]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][4]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_5(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][5]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][5]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][5]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][5]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][5]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][5]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_6(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][6]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][6]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][6]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][6]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][6]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][6]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_7(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][7]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][7]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][7]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][7]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][7]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][7]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_8(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][8]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][8]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][8]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][8]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][8]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][8]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_9(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][9]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][9]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][9]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][9]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][9]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][9]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_10(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][10]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][10]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][10]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][10]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][10]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][10]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_11(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][11]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][11]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][11]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][11]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][11]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][11]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_12(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][12]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][12]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][12]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][12]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][12]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][12]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_13(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][13]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][13]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][13]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][13]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][13]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][13]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_14(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][14]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][14]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][14]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][14]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][14]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][14]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_15(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][15]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][15]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][15]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][15]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][15]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][15]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_16(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][16]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][16]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][16]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][16]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][16]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][16]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_17(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][17]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][17]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][17]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][17]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][17]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][17]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_18(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][18]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][18]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][18]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][18]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][18]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][18]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_19(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][19]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][19]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][19]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][19]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][19]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][19]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_20(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][20]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][20]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][20]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][20]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][20]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][20]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_21(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][21]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][21]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][21]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][21]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][21]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][21]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_22(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][22]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][22]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][22]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][22]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][22]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][22]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast2_23(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][2]["hour"][23]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][2]["hour"][23]["condition"]["icon"];
        text = json["forecast"]["forecastday"][2]["hour"][23]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][2]["hour"][23]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][2]["hour"][23]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][2]["hour"][23]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][2]["day"]["uv"].toInt();
        }
Weather.fromForecast3_0(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][0]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][0]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][0]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][0]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][0]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][0]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_1(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][1]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][1]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][1]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][1]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][1]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][1]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_2(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][2]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][2]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][2]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][2]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][2]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][2]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_3(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][3]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][3]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][3]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][3]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][3]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][3]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_4(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][4]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][4]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][4]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][4]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][4]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][4]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_5(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][5]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][5]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][5]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][5]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][5]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][5]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_6(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][6]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][6]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][6]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][6]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][6]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][6]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_7(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][7]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][7]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][7]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][7]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][7]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][7]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_8(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][8]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][8]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][8]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][8]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][8]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][8]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_9(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][9]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][9]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][9]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][9]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][9]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][9]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_10(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][10]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][10]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][10]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][10]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][10]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][10]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_11(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][11]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][11]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][11]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][11]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][11]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][11]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_12(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][12]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][12]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][12]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][12]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][12]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][12]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_13(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][13]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][13]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][13]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][13]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][13]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][13]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_14(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][14]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][14]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][14]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][14]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][14]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][14]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_15(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][15]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][15]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][15]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][15]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][15]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][15]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_16(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][16]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][16]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][16]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][16]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][16]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][16]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_17(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][17]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][17]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][17]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][17]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][17]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][17]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_18(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][18]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][18]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][18]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][18]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][18]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][18]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_19(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][19]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][19]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][19]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][19]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][19]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][19]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_20(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][20]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][20]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][20]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][20]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][20]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][20]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_21(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][21]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][21]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][21]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][21]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][21]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][21]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_22(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][22]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][22]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][22]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][22]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][22]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][22]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
Weather.fromForecast3_23(Map<String, dynamic> json) {
        city = json["location"]["name"];
        temp = json["forecast"]["forecastday"][3]["hour"][23]["temp_c"].toInt();
        image = json["forecast"]["forecastday"][3]["hour"][23]["condition"]["icon"];
        text = json["forecast"]["forecastday"][3]["hour"][23]["condition"]["text"];
        is_day = json["forecast"]["forecastday"][3]["hour"][23]["is_day"];
        wind_speed =
            json["forecast"]["forecastday"][3]["hour"][23]["wind_kph"].toInt();
        humidity =
            json["forecast"]["forecastday"][3]["hour"][23]["humidity"].toInt();
        uv = json["forecast"]["forecastday"][3]["day"]["uv"].toInt();
        }
}
