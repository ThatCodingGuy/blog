hugo -D
aws s3 sync public s3://blogmathieu
aws cloudfront create-invalidation --distribution-id EHWGVX80UCBD1 --path /*
aws cloudfront create-invalidation --distribution-id EHWGVX80UCBD1 --path /