class CppLSP {
  static String getInfo(String text) {
    var textArray = text.split(" ");
    var newArray = textArray.map((element) {
      if (element == "main") return element.toUpperCase();
    });
    return newArray.join(" ");
  }
}
