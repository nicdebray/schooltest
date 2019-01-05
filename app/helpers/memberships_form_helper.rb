module MembershipsFormHelper
  def student_fields(form, membership, student)
    if student
      output = [content_tag(:h3, "with #{student.first_name}"),
      hidden_field_tag("membership[student_id]", student.id)]
      safe_join(output)
    else
      render partial: "student_fields", locals: { f: form, membership: membership }
    end
  end
end

