data "aws_iam_policy_document" "iam_route53_acme_challenge_policy_document" {
  statement {
    sid = ""

    actions = [
      "route53:GetChange",
      "route53:ChangeResourceRecordSets",
      "route53:ListResourceRecordSets",
    ]

    resources = [
      "arn:aws:route53:::hostedzone/*",
      "arn:aws:route53:::change/*"
    ]

  }
  statement {
    sid = ""

    actions = [
      "route53:ListHostedZonesByName",
    ]

    resources = [
      "*"
    ]

  }
}

resource "aws_iam_policy" "iam_route53_acme_challenge_policy" {
  name   = "iam_route53_acme_challenge_policy"
  path   = "/"
  policy = data.aws_iam_policy_document.iam_route53_acme_challenge_policy_document.json
}

data "aws_iam_user" "jason" {
  user_name = "jason"
}

resource "aws_iam_policy_attachment" "iam_route53_acme_challenge_policy_attachment" {
  name       = "route53_acme_challenge_policy_attachment"
  users      = [data.aws_iam_user.jason.user_name]
  policy_arn = aws_iam_policy.iam_route53_acme_challenge_policy.arn
}

