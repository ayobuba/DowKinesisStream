output "kinesisInputShard" {
  value = aws_kinesis_stream.ExampleInputStream.shard_count
}

output "kinesisOutputShard" {
  value = aws_kinesis_stream.ExampleOutputStream.shard_count
}

output "kinesisARN" {
  value = aws_kinesis_stream.ExampleOutputStream
}
