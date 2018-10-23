require "logger"

log = Logger.new(STDOUT)
log.info("informational message")
log.error("message about an error")

important_log = Logger.new(STDOUT, Logger::Severity::WARN)
important_log.info("informational message that will not get logged")
important_log.warn("warning message that does get logged")

barebones_log = Logger.new(STDOUT)
barebones_log.formatter =
  Logger::Formatter.new do |severity, datetime, progname, message, io|
    io << severity.to_s.rjust(5) << " -- " << message
  end
barebones_log.info("information message with minimal fanfare")
barebones_log.warn("warning message with minimal fanfare")
