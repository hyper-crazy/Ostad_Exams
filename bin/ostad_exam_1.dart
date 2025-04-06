
void main() {
  // Sample input
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  // Map to store name and average score
  Map<String, double> averageScores = {};

  // Calculate average scores and round to 2 decimal places
  for (var student in students) {
    String name = student["name"];
    List<int> scores = List<int>.from(student["scores"]);
    double average = scores.reduce((a, b) => a + b) / scores.length;
    averageScores[name] = double.parse(average.toStringAsFixed(2));
  }

  // Sort the map by values in descending order
  var sortedEntries = averageScores.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  Map<String, double> sortedAverageScores = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  // Print the final result
  print(sortedAverageScores);
}
