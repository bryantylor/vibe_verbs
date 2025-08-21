# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

### Setup and Running
- `mix setup` - Install and setup dependencies (includes database setup and asset compilation)
- `mix phx.server` - Start Phoenix server (accessible at http://localhost:4000)
- `iex -S mix phx.server` - Start server in interactive Elixir shell

### Testing and Quality
- `mix test` - Run all tests (includes database setup)
- `mix test test/path/to/specific_test.exs` - Run specific test file
- `mix test --failed` - Run only previously failed tests
- `mix precommit` - Run quality checks (compile with warnings as errors, check unused deps, format, test)

### Database
- `mix ecto.create` - Create database
- `mix ecto.migrate` - Run migrations
- `mix ecto.reset` - Drop and recreate database with seeds
- `mix ecto.setup` - Create, migrate, and seed database

### Assets
- `mix assets.setup` - Install Tailwind and esbuild if missing
- `mix assets.build` - Build assets for development
- `mix assets.deploy` - Build and minify assets for production

## Architecture Overview

### Technology Stack
- **Framework**: Phoenix 1.8 with LiveView 1.1
- **Database**: PostgreSQL with Ecto
- **Frontend**: Tailwind CSS with daisyUI components, Heroicons
- **HTTP Client**: Req library (preferred over HTTPoison/Tesla)
- **Assets**: esbuild for JavaScript, Tailwind for CSS

### Project Structure
- `lib/vibe_verbs/` - Core application logic and contexts
- `lib/vibe_verbs_web/` - Web interface (controllers, LiveViews, components)
- `lib/vibe_verbs_web/components/core_components.ex` - Reusable UI components with daisyUI styling
- `lib/vibe_verbs_web/router.ex` - URL routing
- `assets/` - Frontend assets (JS, CSS, static files)
- `priv/repo/` - Database migrations and seeds
- `test/` - Test files with support modules

### Key Conventions
- Phoenix contexts pattern for domain logic organization
- LiveView for interactive features
- HEEx templates (.html.heex) for server-rendered HTML
- Core components built with daisyUI/Tailwind for consistent UI
- `VibeVerbsWeb` module provides common imports/aliases for web modules

### Database and OTP
- Ecto for database operations with PostgreSQL
- Application supervision tree includes Repo, PubSub, Telemetry, and Endpoint
- Uses Bandit as the Phoenix adapter

### Styling Framework
- Tailwind CSS as the utility framework
- daisyUI plugin provides semantic component classes
- Heroicons for iconography via the `<.icon>` component
- All styling should use existing daisyUI components when possible

### Development Guidelines
The codebase includes comprehensive Phoenix, Elixir, and LiveView guidelines in AGENTS.md that cover:
- Phoenix 1.8 specific patterns (layouts, components, routing)
- Elixir best practices (immutability, pattern matching, OTP)
- LiveView patterns (streams, forms, testing)
- HEEx template syntax and conventions
- Ecto schema and changeset patterns

Always refer to AGENTS.md for detailed coding standards and patterns when working on this codebase.