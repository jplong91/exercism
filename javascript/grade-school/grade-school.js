var School = function() {
  this.students = {};
};

School.prototype.add = function(name, grade) {
  if (this.students[grade]) {
    let nameArray = this.students[grade];
    nameArray.push(name);
    this.students[grade] = nameArray;
  } else {
    let gradeNames = [];
    gradeNames.push(name);
    this.students[grade] = gradeNames;
  }
};

School.prototype.grade = function(grade) {
  return this.students[grade] ? this.students[grade].sort() : [];
};

School.prototype.roster = function() {
  console.log(this.students);
  return this.students.sort(function(a, b) {
    return a.value - b.value;
  });
};

module.exports = School;
