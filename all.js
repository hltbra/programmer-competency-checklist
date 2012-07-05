$(function() {
  var markAsKnown = function(skill) {
      skill.removeClass("dont-know").addClass("know");
  };

  var markAsUnknown = function(skill) {
      skill.removeClass("know").addClass("dont-know");
  };

  var updateSkillsFromLocalStorage = function() {
    $(".skill").each(function(index, elem) {
      var value = localStorage.getItem($(elem).attr("id"));
      if (value == "check") {
        markAsKnown($(elem));
      }
    });
  };

  var bindClicks = function() {
    $(".status-bar").on("click", ".uncheck", function() {
      var skill = $(this).parent().parent();
      var skill_id = skill.attr("id");
      localStorage.setItem(skill_id, "uncheck");
      markAsUnknown(skill);
    });
    $(".status-bar").on("click", ".check", function() {
      var skill = $(this).parent().parent();
      var skill_id = skill.attr("id");
      localStorage.setItem(skill_id, "check");
      markAsKnown(skill);
    });
  };

  updateSkillsFromLocalStorage();
  bindClicks();
});
