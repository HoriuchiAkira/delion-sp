using Godot;
using System;

public class world_gen : Node
{
	public long seed = 0;
	
	public long rand_from_seed (long seed) {
		GD.Seed((ulong)seed);
		long r = GD.Randi();
		GD.Seed((ulong)(this.seed));
		return r;
	}
	
	// i refuse to use CAPS
	public long magic_machine (long n_1, long n_2) {
		long m_1 = rand_from_seed(seed + n_1);
		long m_2 = rand_from_seed(seed + n_2);
		long f = (m_1 % 10000) * 10000 + m_2 % 10000;
		return rand_from_seed(f);
	}
	
	public override void _Ready() {
		GD.Randomize();
		seed = GD.Randi();
		GD.Print("SEED: " + seed);
	}
}
