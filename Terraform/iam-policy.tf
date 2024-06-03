resource "aws_iam_policy_attachment" "iam_policy" {
  role = aws_iam_role.lamda_exec_role.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}