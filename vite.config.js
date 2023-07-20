import { defineConfig } from 'vitest/config';

export default defineConfig({
	server: {
		port: process.env.PORT || 8000,
		host: process.env.HOST || '0.0.0.0',
		strictPort: true,
		fs: {
			// Allow serving files from one level up to the project root
			allow: ['..'],
		  },
	},
	
});
