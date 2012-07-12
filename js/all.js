$(function() {
  var markAsKnown = function(skill, skillId) {
      localStorage.setItem(skillId, "check");
      skill.find("input").prop("checked", true);
  };

  var markAsUnknown = function(skill, skillId) {
      localStorage.setItem(skillId, "uncheck");
      skill.find("input").prop("checked", false);
  };

  var updateSkillsFromLocalStorage = function() {
    $(".skill").each(function(index, elem) {
      var skillId = $(elem).attr("id");
      var value = localStorage.getItem(skillId);
      if (value === "check") {
        markAsKnown($(elem), skillId);
      }
    });
  };

  var bindClicks = function() {
    $("input.check").change(function() {
        var skill = $(this).parent().parent();
        var skillId = skill.attr("id");
        if ($(this).prop("checked")) {
            markAsKnown(skill, skillId);
        } else {
            markAsUnknown(skill, skillId);
        }
    });
  };

  updateSkillsFromLocalStorage();
  bindClicks();
});
