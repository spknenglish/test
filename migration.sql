-- Add duration_minutes column to test_schedule table
ALTER TABLE test_schedule ADD COLUMN IF NOT EXISTS duration_minutes INTEGER DEFAULT 30;

-- Add features to heartbeats table
ALTER TABLE heartbeats ADD COLUMN IF NOT EXISTS is_kicked BOOLEAN DEFAULT FALSE;
ALTER TABLE heartbeats ADD COLUMN IF NOT EXISTS updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW();
