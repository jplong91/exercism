var School = function() {
  this.students = {};
};

School.prototype.add = function(name, grade) {
  if (this.students[grade]) {
    let nameArray = this.students[grade];
    nameArray.push(name);
    this.students[grade] = nameArray.sort();
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
  return this.students;
};

module.exports = School;
