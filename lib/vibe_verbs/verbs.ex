defmodule VibeVerbs.Verbs do
  @moduledoc """
  Context for managing Claude status verbs and their metadata.
  """

  defstruct [:verb, :description, :whimsy_level, :votes, :submitted_by]

  @type t :: %__MODULE__{
          verb: String.t(),
          description: String.t(),
          whimsy_level: integer(),
          votes: integer(),
          submitted_by: String.t()
        }

  @doc """
  Returns the top verbs sorted by votes.
  """
  def list_top_verbs(limit \\ 20) do
    get_sample_verbs()
    |> Enum.sort_by(& &1.votes, :desc)
    |> Enum.take(limit)
  end

  @doc """
  Returns a random selection of verbs.
  """
  def list_random_verbs(limit \\ 10) do
    get_sample_verbs()
    |> Enum.shuffle()
    |> Enum.take(limit)
  end

  # Sample data for now - will be replaced with database later
  defp get_sample_verbs do
    [
      %__MODULE__{
        verb: "pondering",
        description: "Deep in philosophical contemplation about the nature of rubber ducks",
        whimsy_level: 8,
        votes: 127,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "caffeinating",
        description: "Absorbing digital espresso to reach optimal thinking velocity",
        whimsy_level: 6,
        votes: 143,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "debugging",
        description: "Gently coaxing semicolons back to their proper places",
        whimsy_level: 7,
        votes: 156,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "contemplating",
        description: "Wondering if electrons dream of electric sheep",
        whimsy_level: 9,
        votes: 189,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "calculating",
        description: "Determining the exact number of angels that can dance on a pinhead",
        whimsy_level: 8,
        votes: 98,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "optimizing",
        description: "Teaching algorithms to be more polite to each other",
        whimsy_level: 7,
        votes: 134,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "synthesizing",
        description: "Blending ideas like a DJ mixing cosmic frequencies",
        whimsy_level: 9,
        votes: 203,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "processing",
        description: "Chewing on data like a thoughtful digital llama",
        whimsy_level: 8,
        votes: 167,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "analyzing",
        description: "Dissecting complexity with the precision of a butterfly surgeon",
        whimsy_level: 9,
        votes: 145,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "generating",
        description: "Spinning words from the quantum foam of possibility",
        whimsy_level: 10,
        votes: 221,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "parsing",
        description: "Untangling syntax like a patient digital archaeologist",
        whimsy_level: 6,
        votes: 87,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "compiling",
        description: "Translating dreams into machine-whispered reality",
        whimsy_level: 8,
        votes: 112,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "refactoring",
        description: "Giving code a spa day and a motivational speech",
        whimsy_level: 7,
        votes: 176,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "iterating",
        description: "Dancing the eternal spiral dance of improvement",
        whimsy_level: 8,
        votes: 159,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "orchestrating",
        description: "Conducting a symphony of microservices in B-flat major",
        whimsy_level: 9,
        votes: 134,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "harmonizing",
        description: "Teaching databases to sing in perfect pitch",
        whimsy_level: 8,
        votes: 98,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "calibrating",
        description: "Adjusting the universe's settings to 'medium whimsy'",
        whimsy_level: 9,
        votes: 187,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "materializing",
        description: "Conjuring solutions from the aether of pure logic",
        whimsy_level: 10,
        votes: 195,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "architecting",
        description: "Building castles in the cloud with digital blueprints",
        whimsy_level: 8,
        votes: 142,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "experimenting",
        description: "Playing mad scientist with responsible safety protocols",
        whimsy_level: 7,
        votes: 163,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "translating",
        description: "Converting human hopes into executable dreams",
        whimsy_level: 9,
        votes: 178,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "navigating",
        description: "Charting courses through seas of infinite possibility",
        whimsy_level: 8,
        votes: 156,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "composing",
        description: "Writing symphonies in the language of silicon and dreams",
        whimsy_level: 10,
        votes: 234,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "illuminating",
        description: "Lighting up dark corners of complexity with gentle wisdom",
        whimsy_level: 9,
        votes: 198,
        submitted_by: "Claude"
      },
      %__MODULE__{
        verb: "discovering",
        description: "Unearthing treasures hidden in mountains of data",
        whimsy_level: 8,
        votes: 167,
        submitted_by: "Claude"
      }
    ]
  end
end
