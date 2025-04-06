void main() {
  // List of students with their names and scores
  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]}
  ];

  // Map to store the average score for each student
  Map<String, double> averages = {};

  // Loop through each student
  for (int i = 0; i < students.length; i++) {
    String name = students[i]["name"];
    List<int> scores = List<int>.from(students[i]["scores"]);

    int sum = 0;
    for (int j = 0; j < scores.length; j++) {
      sum += scores[j];
    }

    double avg = sum / scores.length;
    averages[name] = double.parse(avg.toStringAsFixed(2));
  }

  // Sort the map by values (average scores) in descending order
  var sortedEntries = averages.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  // Convert back to a map
  Map<String, double> sortedAverages = {
    for (var entry in sortedEntries) entry.key: entry.value
  };

  // Print the final sorted result
  print(sortedAverages);
}
