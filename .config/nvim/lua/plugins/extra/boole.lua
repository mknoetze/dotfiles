return {
  "nat-418/boole.nvim",
  config = function()
    require('boole').setup({
      mappings = {
        increment = '<C-a>',
        decrement = '<C-x>',
      },

      -- Only non-case-relevant sequences stay here
      additions = {
        { 'and', 'or', 'not' },
        { 'v1', 'v2', 'v3', 'v4' },
        { 'GET', 'POST', 'PUT', 'DELETE' },
      },

      -- Most meaningful sequences are now casing-aware!
      allow_caps_additions = {
        -- Boolean/state toggles
        { 'true', 'false' },
        { 'yes', 'no' },
        { 'on', 'off' },
        { 'enable', 'disable' },
        { 'enabled', 'disabled' },
        { 'start', 'stop' },
        { 'open', 'close' },
        { 'active', 'inactive' },
        { 'visible', 'hidden' },
        { 'read', 'unread' },

        -- General states / labels
        { 'valid', 'invalid' },
        { 'low', 'medium', 'high' },
        { 'first', 'second', 'third' },
        { 'up', 'down' },
        { 'in', 'out' },
        { 'before', 'after' },
        { 'min', 'max' },
        { 'left', 'right' },
        {'below', 'above'},
        { 'public', 'protected', 'private' },

        -- Statuses
        { 'pending', 'running', 'completed' },
        { 'todo', 'in_progress', 'done' },
        { 'draft', 'review', 'published' },
        { 'pass', 'fail' },
        { 'passed', 'failed' },
        { 'skip', 'todo' },

        -- Environments / config
        { 'dev', 'test', 'staging', 'prod' },
        { 'debug', 'info', 'warn', 'error' },
        { 'null', 'undefined' },
        { 'public', 'private', 'protected' },

        -- Version stages
        { 'alpha', 'beta', 'rc', 'stable' },

        -- UI/UX labels
        { 'bug', 'feature', 'chore' },
        { 'small', 'medium', 'large' },
        { 'hot', 'warm', 'cold' },
        { 'clean', 'dirty' },

        { 'idle', 'running', 'paused', 'stopped' },
        { 'online', 'offline' },
        { 'connected', 'disconnected' },
        { 'mounted', 'unmounted' },
        { 'started', 'stopped' },
        { 'authorized', 'unauthorized' },
        { 'success', 'failure' },
        { 'passing', 'failing' },
        { 'build', 'test', 'deploy' },
        { 'restart', 'shutdown' },
        { 'checked', 'unchecked' },
        { 'allow', 'deny' },
        {'chaos', 'havoc'},
      }
    })
  end,
}

